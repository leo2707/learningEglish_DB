CREATE TABLE LEARNING_ENGLISH.VERB(
VE_ID SERIAL,
VE_ID_LESSON VARCHAR(10),
VE_TYPE_VERB VARCHAR(100),

VE_ENGLISH_PRESENT_VALUE VARCHAR(100),
VE_ENGLISH_PRESENT_PRONUNCIATION VARCHAR(100),
VE_ENGLISH_PRESENT_SOUND VARCHAR(100),

VE_ENGLISH_PAST_VALUE VARCHAR(100),
VE_ENGLISH_PAST_PRONUNCIATION VARCHAR(100),
VE_ENGLISH_PAST_SOUND VARCHAR(100),

VE_ENGLISH_PAST_PARTICIPLE_VALUE VARCHAR(100),
VE_ENGLISH_PAST_PARTICIPLE_PRONUNCIATION VARCHAR(100),
VE_ENGLISH_PAST_PARTICIPLE_SOUND VARCHAR(100),

VE_SPANISH_VALUE VARCHAR(100),
VE_SPANISH_PRONUNCIATION VARCHAR(100),
VE_SPANISH_SOUND VARCHAR(100),

VE_OTHER_VALUE VARCHAR(100),
VE_ORDER INTEGER
);

/*PRIMARY KEY*/
ALTER TABLE LEARNING_ENGLISH.VERB ADD CONSTRAINT VERB_PK PRIMARY KEY (VE_ID);
/*FOREIGN KEYS*/
ALTER TABLE LEARNING_ENGLISH.VERB ADD CONSTRAINT FK_VERB_LESS FOREIGN KEY ( VE_ID_LESSON ) REFERENCES LEARNING_ENGLISH.LESSON ( LE_ID ) ON UPDATE CASCADE;
/*UNIQUE*/
ALTER TABLE LEARNING_ENGLISH.VERB ADD CONSTRAINT VERB_UN UNIQUE (VE_ID_LESSON, VE_TYPE_VERB, VE_ENGLISH_PRESENT_VALUE, VE_SPANISH_VALUE);

/*COMMENT THE TABLE*/
COMMENT ON TABLE LEARNING_ENGLISH.VERB IS 'This table stores the verbs';
/*COMMENT THE FIELDS*/
COMMENT ON COLUMN LEARNING_ENGLISH.VERB.VE_ID IS 'Primary key of the table VERB.';
COMMENT ON COLUMN LEARNING_ENGLISH.VERB.VE_ID_LESSON IS 'Foreign key of the table LESSON.';
COMMENT ON COLUMN LEARNING_ENGLISH.VERB.VE_TYPE_VERB IS 'Field that saves the type of verb (REGULAR or IRREGULAR).';

COMMENT ON COLUMN LEARNING_ENGLISH.VERB.VE_ENGLISH_PRESENT_VALUE IS 'Field that saves the value the verb in present tense (english).';
COMMENT ON COLUMN LEARNING_ENGLISH.VERB.VE_ENGLISH_PRESENT_PRONUNCIATION IS 'Field that saves the pronunciation the verb in present tense (english).';
COMMENT ON COLUMN LEARNING_ENGLISH.VERB.VE_ENGLISH_PRESENT_SOUND IS 'Field that saves the sound the verb in present tense (english).';

COMMENT ON COLUMN LEARNING_ENGLISH.VERB.VE_ENGLISH_PAST_VALUE IS 'Field that saves the value the verb in past tense (english).';
COMMENT ON COLUMN LEARNING_ENGLISH.VERB.VE_ENGLISH_PAST_PRONUNCIATION IS 'Field that saves the pronunciation the verb in past tense (english).';
COMMENT ON COLUMN LEARNING_ENGLISH.VERB.VE_ENGLISH_PAST_SOUND IS 'Field that saves the sound the verb in past tense (english).';

COMMENT ON COLUMN LEARNING_ENGLISH.VERB.VE_ENGLISH_PAST_PARTICIPLE_VALUE IS 'Field that saves the value the verb in past participle tense (english).';
COMMENT ON COLUMN LEARNING_ENGLISH.VERB.VE_ENGLISH_PAST_PARTICIPLE_PRONUNCIATION IS 'Field that saves the pronunciation the verb in past participlet tense (english).';
COMMENT ON COLUMN LEARNING_ENGLISH.VERB.VE_ENGLISH_PAST_PARTICIPLE_SOUND IS 'Field that saves the sound the verb in past participle tense (english).';

COMMENT ON COLUMN LEARNING_ENGLISH.VERB.VE_SPANISH_VALUE IS 'Field that saves the value in spanish.';
COMMENT ON COLUMN LEARNING_ENGLISH.VERB.VE_SPANISH_PRONUNCIATION IS 'Field that saves the pronunciation of the word in spanish.';
COMMENT ON COLUMN LEARNING_ENGLISH.VERB.VE_SPANISH_SOUND IS 'Field that saves the sound of the word in spanish.';

COMMENT ON COLUMN LEARNING_ENGLISH.VERB.VE_OTHER_VALUE IS 'Field that saves other value.';
COMMENT ON COLUMN LEARNING_ENGLISH.VERB.VE_ORDER IS 'Field that saves the order of the verb.';
