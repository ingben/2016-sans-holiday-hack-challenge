.class Lcom/parse/ParseTaskUtils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback1;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/parse/ParseCallback1",
            "<",
            "Lcom/parse/ParseException;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback1;Z)La/j;

    move-result-object v0

    return-object v0
.end method

.method static callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback1;Z)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/parse/ParseCallback1",
            "<",
            "Lcom/parse/ParseException;",
            ">;Z)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/parse/ParseTaskUtils$1;

    invoke-direct {v0, p1}, Lcom/parse/ParseTaskUtils$1;-><init>(Lcom/parse/ParseCallback1;)V

    invoke-static {p0, v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback2;Z)La/j;

    move-result-object p0

    goto :goto_0
.end method

.method static callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback2;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La/j",
            "<TT;>;",
            "Lcom/parse/ParseCallback2",
            "<TT;",
            "Lcom/parse/ParseException;",
            ">;)",
            "La/j",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback2;Z)La/j;

    move-result-object v0

    return-object v0
.end method

.method static callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback2;Z)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La/j",
            "<TT;>;",
            "Lcom/parse/ParseCallback2",
            "<TT;",
            "Lcom/parse/ParseException;",
            ">;Z)",
            "La/j",
            "<TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, La/k;

    invoke-direct {v0}, La/k;-><init>()V

    new-instance v1, Lcom/parse/ParseTaskUtils$2;

    invoke-direct {v1, p2, v0, p1}, Lcom/parse/ParseTaskUtils$2;-><init>(ZLa/k;Lcom/parse/ParseCallback2;)V

    invoke-virtual {p0, v1}, La/j;->a(La/h;)La/j;

    invoke-virtual {v0}, La/k;->a()La/j;

    move-result-object p0

    goto :goto_0
.end method

.method static wait(La/j;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La/j",
            "<TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, La/j;->h()V

    invoke-virtual {p0}, La/j;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, La/j;->g()Ljava/lang/Exception;

    move-result-object v0

    instance-of v1, v0, Lcom/parse/ParseException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/parse/ParseException;

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    instance-of v1, v0, La/a;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/parse/ParseException;

    invoke-direct {v1, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    invoke-virtual {p0}, La/j;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    invoke-virtual {p0}, La/j;->f()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method
