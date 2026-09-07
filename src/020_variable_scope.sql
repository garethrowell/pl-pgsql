do
	$$
	<<parent>>
	declare
	v_var1 int := 1;
	begin
		declare
		v_var1 int := 10;
		begin
			raise notice 'Parent var1 %',
			parent.v_var1;
			raise notice 'Local v_var1 %',
			v_var1;
		end;
	end;
	$$;
