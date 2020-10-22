START TRANSACTION;
UPDATE users 
SET is_deleted=1 
WHERE office_phone_number IS NULL 
AND phone_number IS NULL;
COMMIT;
