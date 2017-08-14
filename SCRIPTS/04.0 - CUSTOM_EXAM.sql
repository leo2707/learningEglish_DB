CREATE TABLE LEARNING_ENGLISH.CUSTOM_EXAM(
CE_ID_LESSON VARCHAR(10),
CE_LENGUAJE VARCHAR(100),
CE_QUESTION VARCHAR(100),
CE_AUDIO_QUESTION VARCHAR(100),
CE_CORRECT_ANSWER VARCHAR(100),
CE_OPTIONS TEXT
);

/*FOREIGN KEYS*/
ALTER TABLE LEARNING_ENGLISH.CUSTOM_EXAM ADD CONSTRAINT FK_CUSTOM_EXAM FOREIGN KEY ( CE_ID_LESSON ) REFERENCES LEARNING_ENGLISH.LESSON ( LE_ID ) ON UPDATE CASCADE;

/*COMMENT THE TABLE*/
COMMENT ON TABLE LEARNING_ENGLISH.CUSTOM_EXAM IS 'This table stores the different types of thems';
/*COMMENT THE FIELDS*/
COMMENT ON COLUMN LEARNING_ENGLISH.CUSTOM_EXAM.CE_ID_LESSON IS 'Foreign key of the table LESSON.';
COMMENT ON COLUMN LEARNING_ENGLISH.CUSTOM_EXAM.CE_LENGUAJE IS 'Field that saves the name of the lesson.';
COMMENT ON COLUMN LEARNING_ENGLISH.CUSTOM_EXAM.CE_QUESTION IS 'Field that saves the description of the theme.';
COMMENT ON COLUMN LEARNING_ENGLISH.CUSTOM_EXAM.CE_AUDIO_QUESTION IS 'Field that saves the keywords of the theme.';
COMMENT ON COLUMN LEARNING_ENGLISH.CUSTOM_EXAM.CE_CORRECT_ANSWER IS 'Field that saves the icon of the lesson.';
COMMENT ON COLUMN LEARNING_ENGLISH.CUSTOM_EXAM.CE_OPTIONS IS 'Field that saves the state of the theme.';
;