CREATE TABLE LEARNING_ENGLISH.LESSON(
LE_ID VARCHAR(10),
LE_ID_THEME INTEGER,
LE_ID_LESSON_TYPE INTEGER,
LE_NAME VARCHAR(100),
LE_DESCRIPTION TEXT,
LE_ICON VARCHAR(100),
LE_STATE BOOLEAN NOT NULL,
LE_ORDER INTEGER
);

/*PRIMARY KEY*/
ALTER TABLE LEARNING_ENGLISH.LESSON ADD CONSTRAINT LESSON_PK PRIMARY KEY (LE_ID);
/*FOREIGN KEYS*/
ALTER TABLE LEARNING_ENGLISH.LESSON ADD CONSTRAINT FK_LESS_THEM FOREIGN KEY ( LE_ID_THEME ) REFERENCES LEARNING_ENGLISH.THEME ( TH_ID ) ON UPDATE CASCADE;
ALTER TABLE LEARNING_ENGLISH.LESSON ADD CONSTRAINT FK_LESS_TYPE FOREIGN KEY ( LE_ID_LESSON_TYPE ) REFERENCES LEARNING_ENGLISH.LESSON_TYPE ( LT_ID ) ON UPDATE CASCADE;

/*COMMENT THE TABLE*/
COMMENT ON TABLE LEARNING_ENGLISH.LESSON IS 'This table stores the different types of lessons';
/*COMMENT THE FIELDS*/
COMMENT ON COLUMN LEARNING_ENGLISH.LESSON.LE_ID IS 'Primary key of the table LESSON.';
COMMENT ON COLUMN LEARNING_ENGLISH.LESSON.LE_ID_THEME IS 'Foreign key of the table THEME.';
COMMENT ON COLUMN LEARNING_ENGLISH.LESSON.LE_ID_THEME IS 'Foreign key of the table LESSON_TYPE.';
COMMENT ON COLUMN LEARNING_ENGLISH.LESSON.LE_NAME IS 'Field that saves the name of the lesson.';
COMMENT ON COLUMN LEARNING_ENGLISH.LESSON.LE_DESCRIPTION IS 'Field that saves the description of the lesson.';
COMMENT ON COLUMN LEARNING_ENGLISH.LESSON.LE_ICON IS 'Field that saves the icon of the lesson.';
COMMENT ON COLUMN LEARNING_ENGLISH.LESSON.LE_STATE IS 'Field that saves the state of the lesson.';
COMMENT ON COLUMN LEARNING_ENGLISH.LESSON.LE_ORDER IS 'Field that saves the order of the lesson.';
;