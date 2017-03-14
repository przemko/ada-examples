with Ada.Text_IO; use Ada.Text_IO;

package body Puzzle is

   procedure Print (E : Expression) is
   begin
      null;
   end Print;

   procedure Print (L : Literal) is
      S : String := Natural'Image (L.Value);
   begin
      Put (S (2 .. S'Last));
   end Print;

   procedure Print (A : Addition) is
   begin
      Put ("(");
      Print_Expression(A.Left);
      Put (" + ");
      Print_Expression(A.Right);
      Put (")");
   end Print;

   procedure Print (S : Subtraction) is
   begin
      Put ("(");
      Print_Expression(S.Left);
      Put (" - ");
      Print_Expression(S.Right);
      Put (")");
   end Print;

   procedure Print (M : Multiplication) is
   begin
      Put ("(");
      Print_Expression(M.Left);
      Put (" * ");
      Print_Expression(M.Right);
      Put (")");
   end Print;

   procedure Print (D : Division) is
   begin
      Put ("(");
      Print_Expression(D.Left);
      Put (" / ");
      Print_Expression(D.Right);
      Put (")");
   end Print;

   procedure Print_Expression (Tree : in Expr_Ptr) is

   begin
      Print (Tree.all);
   end Print_Expression;

   function Build_Expression (Args : in Numbers;
                              Value : in Integer) return Expr_Ptr is

      function Generate (Args : in Numbers) return Expr_Ptr is
      begin
         return null;
      end Generate;

   begin
      return Generate (Args);
   end Build_Expression;

end Puzzle;