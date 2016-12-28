.class Lcom/parse/ParseObject$21;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->handleFetchResultAsync(Lcom/parse/ParseObject$State;)La/j;
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
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$result:Lcom/parse/ParseObject$State;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lcom/parse/ParseObject$State;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseObject$21;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$21;->val$result:Lcom/parse/ParseObject$State;

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

    iget-object v0, p0, Lcom/parse/ParseObject$21;->this$0:Lcom/parse/ParseObject;

    iget-object v1, v0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject$21;->val$result:Lcom/parse/ParseObject$State;

    invoke-virtual {v0}, Lcom/parse/ParseObject$State;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject$21;->val$result:Lcom/parse/ParseObject$State;

    :goto_0
    iget-object v2, p0, Lcom/parse/ParseObject$21;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v2, v0}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;)V

    monitor-exit v1

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseObject$21;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseObject$State;->newBuilder()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseObject$21;->val$result:Lcom/parse/ParseObject$State;

    invoke-virtual {v0, v2}, Lcom/parse/ParseObject$State$Init;->apply(Lcom/parse/ParseObject$State;)Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$21;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
