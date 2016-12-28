.class Lcom/parse/ParseUser$12$1$2;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$12$1;->then(La/j;)La/j;
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
.field final synthetic this$1:Lcom/parse/ParseUser$12$1;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$12$1;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseUser$12$1$2;->this$1:Lcom/parse/ParseUser$12$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 4
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

    iget-object v0, p0, Lcom/parse/ParseUser$12$1$2;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v0, v0, Lcom/parse/ParseUser$12$1;->val$user:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser$12$1$2;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v0, v0, Lcom/parse/ParseUser$12$1;->val$user:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseUser;->stripAnonymity()V
    invoke-static {v0}, Lcom/parse/ParseUser;->access$600(Lcom/parse/ParseUser;)V

    iget-object v0, p0, Lcom/parse/ParseUser$12$1$2;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v0, v0, Lcom/parse/ParseUser$12$1;->val$user:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$12$1$2;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v2, v2, Lcom/parse/ParseUser$12$1;->this$0:Lcom/parse/ParseUser$12;

    iget-object v2, v2, Lcom/parse/ParseUser$12;->val$authType:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/ParseUser$12$1$2;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v3, v3, Lcom/parse/ParseUser$12$1;->this$0:Lcom/parse/ParseUser$12;

    iget-object v3, v3, Lcom/parse/ParseUser$12;->val$authData:Ljava/util/Map;

    invoke-virtual {v0, v2, v3}, Lcom/parse/ParseUser;->putAuthData(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/parse/ParseUser$12$1$2;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v0, v0, Lcom/parse/ParseUser$12$1;->val$user:Lcom/parse/ParseUser;

    invoke-virtual {v0, p1}, Lcom/parse/ParseUser;->resolveLazinessAsync(La/j;)La/j;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$12$1$2;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
