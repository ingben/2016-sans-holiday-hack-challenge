.class La/j$6$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/j$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La/j$6;


# direct methods
.method constructor <init>(La/j$6;)V
    .locals 0

    iput-object p1, p0, La/j$6$1;->a:La/j$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/j;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, La/j$6$1;->a:La/j$6;

    iget-object v0, v0, La/j$6;->a:La/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/j$6$1;->a:La/j$6;

    iget-object v0, v0, La/j$6;->a:La/d;

    invoke-virtual {v0}, La/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/j$6$1;->a:La/j$6;

    iget-object v0, v0, La/j$6;->b:La/k;

    invoke-virtual {v0}, La/k;->c()V

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p1}, La/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La/j$6$1;->a:La/j$6;

    iget-object v0, v0, La/j$6;->b:La/k;

    invoke-virtual {v0}, La/k;->c()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, La/j;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, La/j$6$1;->a:La/j$6;

    iget-object v0, v0, La/j$6;->b:La/k;

    invoke-virtual {p1}, La/j;->g()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, La/k;->b(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, La/j$6$1;->a:La/j$6;

    iget-object v0, v0, La/j$6;->b:La/k;

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, La/k;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, La/j$6$1;->a(La/j;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
