.class Lcom/parse/ParseUser$16$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$16;->then(La/j;)La/j;
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
        "Lcom/parse/ParseUser$State;",
        "La/j",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseUser$16;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$16;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseUser$16$1;->this$1:Lcom/parse/ParseUser$16;

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
            "Lcom/parse/ParseUser$State;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser$State;

    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/parse/ParseUser$State;->isNew()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/parse/ParseUser$16$1$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$16$1$2;-><init>(Lcom/parse/ParseUser$16$1;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/parse/ParseUser$16$1;->this$1:Lcom/parse/ParseUser$16;

    iget-object v1, v1, Lcom/parse/ParseUser$16;->this$0:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$16$1;->this$1:Lcom/parse/ParseUser$16;

    iget-object v2, v2, Lcom/parse/ParseUser$16;->val$operations:Lcom/parse/ParseOperationSet;

    invoke-virtual {v1, v0, v2}, Lcom/parse/ParseUser;->handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)La/j;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$16$1$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseUser$16$1$1;-><init>(Lcom/parse/ParseUser$16$1;Lcom/parse/ParseUser$State;)V

    invoke-virtual {v1, v2}, La/j;->c(La/h;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$16$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
