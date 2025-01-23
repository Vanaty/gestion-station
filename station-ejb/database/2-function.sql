CREATE OR REPLACE FUNCTION getseqmaison
    RETURN NUMBER
IS
    next_value NUMBER;
BEGIN
    SELECT seq_maison.NEXTVAL INTO next_value FROM dual;
    RETURN next_value;
END;
/

CREATE OR REPLACE FUNCTION getseqpayment
    RETURN NUMBER
IS
    next_value NUMBER;
BEGIN
    SELECT seq_payment.NEXTVAL INTO next_value FROM dual;
    RETURN next_value;
END;
/

CREATE OR REPLACE FUNCTION getseqcomposant
    RETURN NUMBER
IS
    next_value NUMBER;
BEGIN
    SELECT seq_composant.NEXTVAL INTO next_value FROM dual;
    RETURN next_value;
END;
/

CREATE OR REPLACE FUNCTION getseqarrondissement
    RETURN NUMBER
IS
    next_value NUMBER;
BEGIN
    SELECT seq_arrondissement.NEXTVAL INTO next_value FROM dual;
    RETURN next_value;
END;
/

CREATE OR REPLACE FUNCTION getseqmatiere
    RETURN NUMBER
IS
    next_value NUMBER;
BEGIN
    SELECT seq_matiere.NEXTVAL INTO next_value FROM dual;
    RETURN next_value;
END;
/