SET SERVEROUTPUT ON;
DECLARE
    n NUMBER := 1000; 
    is_prime BOOLEAN;
    result VARCHAR2(4000) := ''; 
BEGIN
    FOR i IN 2..n LOOP
        is_prime := TRUE;
        FOR j IN 2..TRUNC(SQRT(i)) LOOP
            IF MOD(i, j) = 0 THEN
                is_prime := FALSE;
                EXIT; 
            END IF;
        END LOOP;
        IF is_prime THEN
            IF result IS NOT NULL THEN
                result := result || '&' || i; 
            ELSE
                result := TO_CHAR(i); 
            END IF;
        END IF;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(result);
END;
/
