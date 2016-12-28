.class Lcom/parse/CachedCurrentUserController$5$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CachedCurrentUserController$5;->then(La/j;)La/j;
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
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/CachedCurrentUserController$5;


# direct methods
.method constructor <init>(Lcom/parse/CachedCurrentUserController$5;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

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
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController$5;->this$0:Lcom/parse/CachedCurrentUserController;

    # getter for: Lcom/parse/CachedCurrentUserController;->mutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/parse/CachedCurrentUserController;->access$000(Lcom/parse/CachedCurrentUserController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController$5;->this$0:Lcom/parse/CachedCurrentUserController;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

    iget-object v2, v2, Lcom/parse/CachedCurrentUserController$5;->this$0:Lcom/parse/CachedCurrentUserController;

    iget-boolean v2, v2, Lcom/parse/CachedCurrentUserController;->currentUserMatchesDisk:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

    iget-boolean v0, v0, Lcom/parse/CachedCurrentUserController$5;->val$shouldAutoCreateUser:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController$5;->this$0:Lcom/parse/CachedCurrentUserController;

    # invokes: Lcom/parse/CachedCurrentUserController;->lazyLogIn()Lcom/parse/ParseUser;
    invoke-static {v0}, Lcom/parse/CachedCurrentUserController;->access$200(Lcom/parse/CachedCurrentUserController;)Lcom/parse/ParseUser;

    move-result-object v0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController$5;->this$0:Lcom/parse/CachedCurrentUserController;

    # getter for: Lcom/parse/CachedCurrentUserController;->store:Lcom/parse/ParseObjectStore;
    invoke-static {v0}, Lcom/parse/CachedCurrentUserController;->access$100(Lcom/parse/CachedCurrentUserController;)Lcom/parse/ParseObjectStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/parse/ParseObjectStore;->getAsync()La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/CachedCurrentUserController$5$1$1;

    invoke-direct {v1, p0}, Lcom/parse/CachedCurrentUserController$5$1$1;-><init>(Lcom/parse/CachedCurrentUserController$5$1;)V

    invoke-virtual {v0, v1}, La/j;->a(La/h;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController$5$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
