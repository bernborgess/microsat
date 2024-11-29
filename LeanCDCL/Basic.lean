
inductive SatState where
  | END : SatState
  | UNSAT : SatState

#check SatState.END

structure Solver where
  x : Float
  y : Float
deriving Repr

def initCDCL (n : Int) (m : Int) : Solver := sorry

def unassign (S : Solver) (lit : Int) : Unit := sorry
def restart (S : Solver) : Unit := sorry
def assign (S : Solver) (reason : Int?) (forced : Int) : Unit := sorry
def addWatch (S : Solver) (lit : Int) (mem : Int) : Unit := sorry
def getMemory (S : Solver) (mem_size:Int) : Unit? := sorry
def addClause (S : Solver) (In : Int?) (size : Int) (irr : Int) : Unit := sorry
def reduceDB (S : Solver) (k : Int) : Unit := sorry
def bump (S : Solver) (lit : Int) : Unit := sorry
def implied (S : Solver) (lit : Int) : Bool := sorry
def analyze (S : Solver) (clause : Int?) : Int? := sorry
def propagate (S : Solver) : SatState := sorry
def solve (S : Solver) : SatState := sorry
def read_until_new_line (input : File) : Unit := sorry
def parse (S : Solver) (filename : String) : SatState := sorry
