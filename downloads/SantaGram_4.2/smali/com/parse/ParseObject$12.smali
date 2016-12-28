.class Lcom/parse/ParseObject$12;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->saveAsync(Ljava/lang/String;La/j;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<",
        "Lcom/parse/ParseObject$State;",
        "La/j",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$operations:Lcom/parse/ParseOperationSet;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseObject$12;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$12;->val$operations:Lcom/parse/ParseOperationSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Lcom/parse/ParseObject$State;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject$State;

    iget-object v1, p0, Lcom/parse/ParseObject$12;->this$0:Lcom/parse/ParseObject;

    iget-object v2, p0, Lcom/parse/ParseObject$12;->val$operations:Lcom/parse/ParseOperationSet;

    invoke-virtual {v1, v0, v2}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$12$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseObject$12$1;-><init>(Lcom/parse/ParseObject$12;La/j;)V

    invoke-virtual {v0, v1}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$12;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
