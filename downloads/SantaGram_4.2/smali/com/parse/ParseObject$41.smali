.class final Lcom/parse/ParseObject$41;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$filesComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$remaining:La/g;

.field final synthetic val$sessionToken:Ljava/lang/String;

.field final synthetic val$usersComplete:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(La/g;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseObject$41;->val$remaining:La/g;

    iput-object p2, p0, Lcom/parse/ParseObject$41;->val$filesComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/parse/ParseObject$41;->val$usersComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/parse/ParseObject$41;->val$sessionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 5
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

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/parse/ParseObject$41;->val$remaining:La/g;

    invoke-virtual {v0}, La/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    # invokes: Lcom/parse/ParseObject;->canBeSerialized()Z
    invoke-static {v0}, Lcom/parse/ParseObject;->access$1500(Lcom/parse/ParseObject;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/parse/ParseObject$41;->val$remaining:La/g;

    invoke-virtual {v0, v2}, La/g;->a(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/parse/ParseObject$41;->val$filesComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parse/ParseObject$41;->val$usersComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to save a ParseObject with a relation to a cycle."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    new-instance v0, Lcom/parse/ParseObject$41$1;

    invoke-direct {v0, p0, v1}, Lcom/parse/ParseObject$41$1;-><init>(Lcom/parse/ParseObject$41;Ljava/util/List;)V

    invoke-static {v1, v0}, Lcom/parse/ParseObject;->enqueueForAll(Ljava/util/List;La/h;)La/j;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$41;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
