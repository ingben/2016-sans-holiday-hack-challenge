.class Lcom/parse/ParseUser$16;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->resolveLazinessAsync(La/j;)La/j;
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
        "Ljava/lang/Void;",
        "La/j",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$operations:Lcom/parse/ParseOperationSet;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Lcom/parse/ParseOperationSet;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseUser$16;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$16;->val$operations:Lcom/parse/ParseOperationSet;

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
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/parse/ParseUser;->getUserController()Lcom/parse/ParseUserController;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseUser$16;->this$0:Lcom/parse/ParseUser;

    invoke-virtual {v1}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseUser$16;->val$operations:Lcom/parse/ParseOperationSet;

    invoke-interface {v0, v1, v2}, Lcom/parse/ParseUserController;->logInAsync(Lcom/parse/ParseUser$State;Lcom/parse/ParseOperationSet;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$16$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$16$1;-><init>(Lcom/parse/ParseUser$16;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$16;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
