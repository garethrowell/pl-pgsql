do
$$
<<main_block>>
begin
     <<outer_block>>
     begin
          <<inner_block>>
          begin
	       raise notice 'inner_block_complete';
	       exit outer_block;
	       -- note: exiting outer_block
          end;
	  raise notice 'outer_block complete';
	  -- the above line gets skipped altogether
     end;
     raise notice 'main_block_complete';
end;
$$;

