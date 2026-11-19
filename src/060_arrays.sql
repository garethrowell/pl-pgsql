do
$$
declare
     v_order_line text = 'ord-line-1';
     v_items_id text[] = array['item1', 'item2', 'item3'];

begin
     raise notice 'Received order line %', v_order_line;
     raise notice 'Order line items %', v_items_id;

end;
$$;


