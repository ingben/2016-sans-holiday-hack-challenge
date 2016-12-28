.class Lcom/parse/ParseTaskUtils$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseTaskUtils$2;->then(La/j;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseTaskUtils$2;

.field final synthetic val$task:La/j;


# direct methods
.method constructor <init>(Lcom/parse/ParseTaskUtils$2;La/j;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseTaskUtils$2$1;->this$0:Lcom/parse/ParseTaskUtils$2;

    iput-object p2, p0, Lcom/parse/ParseTaskUtils$2$1;->val$task:La/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseTaskUtils$2$1;->val$task:La/j;

    invoke-virtual {v0}, La/j;->g()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v0, v1, Lcom/parse/ParseException;

    if-nez v0, :cond_4

    new-instance v0, Lcom/parse/ParseException;

    invoke-direct {v0, v1}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lcom/parse/ParseTaskUtils$2$1;->this$0:Lcom/parse/ParseTaskUtils$2;

    iget-object v1, v1, Lcom/parse/ParseTaskUtils$2;->val$callback:Lcom/parse/ParseCallback2;

    iget-object v2, p0, Lcom/parse/ParseTaskUtils$2$1;->val$task:La/j;

    invoke-virtual {v2}, La/j;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v0, Lcom/parse/ParseException;

    invoke-interface {v1, v2, v0}, Lcom/parse/ParseCallback2;->done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/parse/ParseTaskUtils$2$1;->val$task:La/j;

    invoke-virtual {v0}, La/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseTaskUtils$2$1;->this$0:Lcom/parse/ParseTaskUtils$2;

    iget-object v0, v0, Lcom/parse/ParseTaskUtils$2;->val$tcs:La/k;

    invoke-virtual {v0}, La/k;->c()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseTaskUtils$2$1;->val$task:La/j;

    invoke-virtual {v0}, La/j;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParseTaskUtils$2$1;->this$0:Lcom/parse/ParseTaskUtils$2;

    iget-object v0, v0, Lcom/parse/ParseTaskUtils$2;->val$tcs:La/k;

    iget-object v1, p0, Lcom/parse/ParseTaskUtils$2$1;->val$task:La/j;

    invoke-virtual {v1}, La/j;->g()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, La/k;->b(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/parse/ParseTaskUtils$2$1;->this$0:Lcom/parse/ParseTaskUtils$2;

    iget-object v0, v0, Lcom/parse/ParseTaskUtils$2;->val$tcs:La/k;

    iget-object v1, p0, Lcom/parse/ParseTaskUtils$2$1;->val$task:La/j;

    invoke-virtual {v1}, La/j;->f()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, La/k;->b(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/parse/ParseTaskUtils$2$1;->val$task:La/j;

    invoke-virtual {v1}, La/j;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/parse/ParseTaskUtils$2$1;->this$0:Lcom/parse/ParseTaskUtils$2;

    iget-object v1, v1, Lcom/parse/ParseTaskUtils$2;->val$tcs:La/k;

    invoke-virtual {v1}, La/k;->c()V

    :goto_2
    throw v0

    :cond_2
    iget-object v1, p0, Lcom/parse/ParseTaskUtils$2$1;->val$task:La/j;

    invoke-virtual {v1}, La/j;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/parse/ParseTaskUtils$2$1;->this$0:Lcom/parse/ParseTaskUtils$2;

    iget-object v1, v1, Lcom/parse/ParseTaskUtils$2;->val$tcs:La/k;

    iget-object v2, p0, Lcom/parse/ParseTaskUtils$2$1;->val$task:La/j;

    invoke-virtual {v2}, La/j;->g()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v1, v2}, La/k;->b(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/parse/ParseTaskUtils$2$1;->this$0:Lcom/parse/ParseTaskUtils$2;

    iget-object v1, v1, Lcom/parse/ParseTaskUtils$2;->val$tcs:La/k;

    iget-object v2, p0, Lcom/parse/ParseTaskUtils$2$1;->val$task:La/j;

    invoke-virtual {v2}, La/j;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, La/k;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method
