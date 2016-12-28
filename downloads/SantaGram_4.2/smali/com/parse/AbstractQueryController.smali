.class abstract Lcom/parse/AbstractQueryController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/ParseQueryController;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;La/j;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/parse/AbstractQueryController;->findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;La/j;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/AbstractQueryController$1;

    invoke-direct {v1, p0}, Lcom/parse/AbstractQueryController$1;-><init>(Lcom/parse/AbstractQueryController;)V

    invoke-virtual {v0, v1}, La/j;->a(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method
