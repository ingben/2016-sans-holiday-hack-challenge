.class La/j$3;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/j;->c(La/h;Ljava/util/concurrent/Executor;La/d;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<TTResult;",
        "La/j",
        "<TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:La/d;

.field final synthetic b:La/h;

.field final synthetic c:La/j;


# direct methods
.method constructor <init>(La/j;La/d;La/h;)V
    .locals 0

    iput-object p1, p0, La/j$3;->c:La/j;

    iput-object p2, p0, La/j$3;->a:La/d;

    iput-object p3, p0, La/j$3;->b:La/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/j;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<TTResult;>;)",
            "La/j",
            "<TTContinuationResult;>;"
        }
    .end annotation

    iget-object v0, p0, La/j$3;->a:La/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/j$3;->a:La/d;

    invoke-virtual {v0}, La/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, La/j;->i()La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, La/j;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, La/j;->g()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, La/j;->a(Ljava/lang/Exception;)La/j;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, La/j;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, La/j;->i()La/j;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, La/j$3;->b:La/h;

    invoke-virtual {p1, v0}, La/j;->a(La/h;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, La/j$3;->a(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
