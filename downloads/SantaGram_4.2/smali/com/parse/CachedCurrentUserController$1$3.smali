.class Lcom/parse/CachedCurrentUserController$1$3;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CachedCurrentUserController$1;->then(La/j;)La/j;
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
.field final synthetic this$1:Lcom/parse/CachedCurrentUserController$1;


# direct methods
.method constructor <init>(Lcom/parse/CachedCurrentUserController$1;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/CachedCurrentUserController$1$3;->this$1:Lcom/parse/CachedCurrentUserController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 2
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

    iget-object v0, p0, Lcom/parse/CachedCurrentUserController$1$3;->this$1:Lcom/parse/CachedCurrentUserController$1;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController$1;->this$0:Lcom/parse/CachedCurrentUserController;

    # getter for: Lcom/parse/CachedCurrentUserController;->mutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/parse/CachedCurrentUserController;->access$000(Lcom/parse/CachedCurrentUserController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController$1$3;->this$1:Lcom/parse/CachedCurrentUserController$1;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController$1;->this$0:Lcom/parse/CachedCurrentUserController;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/parse/CachedCurrentUserController$1$3;->this$1:Lcom/parse/CachedCurrentUserController$1;

    iget-object v1, v1, Lcom/parse/CachedCurrentUserController$1;->val$user:Lcom/parse/ParseUser;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->logOutAsync(Z)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/CachedCurrentUserController$1$3$1;

    invoke-direct {v1, p0}, Lcom/parse/CachedCurrentUserController$1$3$1;-><init>(Lcom/parse/CachedCurrentUserController$1$3;)V

    invoke-virtual {v0, v1}, La/j;->a(La/h;)La/j;

    move-result-object p1

    :cond_0
    return-object p1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController$1$3;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
