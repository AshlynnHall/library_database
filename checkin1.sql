USE library;

UPDATE checkout
SET returned = 1,
	checkout_end = curdate()
WHERE checkout_id = 1;