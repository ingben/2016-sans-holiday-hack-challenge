.class Landroid/support/v7/widget/be;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/be$a;,
        Landroid/support/v7/widget/be$b;
    }
.end annotation


# instance fields
.field final a:Landroid/support/v4/i/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/i/a",
            "<",
            "Landroid/support/v7/widget/ao$v;",
            "Landroid/support/v7/widget/be$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/support/v4/i/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/i/e",
            "<",
            "Landroid/support/v7/widget/ao$v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/i/a;

    invoke-direct {v0}, Landroid/support/v4/i/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v4/i/a;

    new-instance v0, Landroid/support/v4/i/e;

    invoke-direct {v0}, Landroid/support/v4/i/e;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/be;->b:Landroid/support/v4/i/e;

    return-void
.end method

.method private a(Landroid/support/v7/widget/ao$v;I)Landroid/support/v7/widget/ao$e$c;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v4/i/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/i/a;->a(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v4/i/a;

    invoke-virtual {v0, v2}, Landroid/support/v4/i/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/be$a;

    if-eqz v0, :cond_0

    iget v3, v0, Landroid/support/v7/widget/be$a;->a:I

    and-int/2addr v3, p2

    if-eqz v3, :cond_0

    iget v1, v0, Landroid/support/v7/widget/be$a;->a:I

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/be$a;->a:I

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    iget-object v1, v0, Landroid/support/v7/widget/be$a;->b:Landroid/support/v7/widget/ao$e$c;

    :goto_1
    iget v3, v0, Landroid/support/v7/widget/be$a;->a:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v4/i/a;

    invoke-virtual {v3, v2}, Landroid/support/v4/i/a;->d(I)Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v7/widget/be$a;->a(Landroid/support/v7/widget/be$a;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    if-ne p2, v1, :cond_3

    iget-object v1, v0, Landroid/support/v7/widget/be$a;->c:Landroid/support/v7/widget/ao$e$c;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide flag PRE or POST"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a(J)Landroid/support/v7/widget/ao$v;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/be;->b:Landroid/support/v4/i/e;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/i/e;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ao$v;

    return-object v0
.end method

.method a()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v4/i/a;

    invoke-virtual {v0}, Landroid/support/v4/i/a;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/be;->b:Landroid/support/v4/i/e;

    invoke-virtual {v0}, Landroid/support/v4/i/e;->c()V

    return-void
.end method

.method a(JLandroid/support/v7/widget/ao$v;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/be;->b:Landroid/support/v4/i/e;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/i/e;->b(JLjava/lang/Object;)V

    return-void
.end method

.method a(Landroid/support/v7/widget/ao$v;Landroid/support/v7/widget/ao$e$c;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v4/i/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/i/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/be$a;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v7/widget/be$a;->a()Landroid/support/v7/widget/be$a;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v4/i/a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/i/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Landroid/support/v7/widget/be$a;->b:Landroid/support/v7/widget/ao$e$c;

    iget v1, v0, Landroid/support/v7/widget/be$a;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/support/v7/widget/be$a;->a:I

    return-void
.end method

.method a(Landroid/support/v7/widget/be$b;)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v4/i/a;

    invoke-virtual {v0}, Landroid/support/v4/i/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v4/i/a;

    invoke-virtual {v0, v2}, Landroid/support/v4/i/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ao$v;

    iget-object v1, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v4/i/a;

    invoke-virtual {v1, v2}, Landroid/support/v4/i/a;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/be$a;

    iget v3, v1, Landroid/support/v7/widget/be$a;->a:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1, v0}, Landroid/support/v7/widget/be$b;->a(Landroid/support/v7/widget/ao$v;)V

    :cond_0
    :goto_1
    invoke-static {v1}, Landroid/support/v7/widget/be$a;->a(Landroid/support/v7/widget/be$a;)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget v3, v1, Landroid/support/v7/widget/be$a;->a:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    iget-object v3, v1, Landroid/support/v7/widget/be$a;->b:Landroid/support/v7/widget/ao$e$c;

    if-nez v3, :cond_2

    invoke-interface {p1, v0}, Landroid/support/v7/widget/be$b;->a(Landroid/support/v7/widget/ao$v;)V

    goto :goto_1

    :cond_2
    iget-object v3, v1, Landroid/support/v7/widget/be$a;->b:Landroid/support/v7/widget/ao$e$c;

    iget-object v4, v1, Landroid/support/v7/widget/be$a;->c:Landroid/support/v7/widget/ao$e$c;

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/be$b;->a(Landroid/support/v7/widget/ao$v;Landroid/support/v7/widget/ao$e$c;Landroid/support/v7/widget/ao$e$c;)V

    goto :goto_1

    :cond_3
    iget v3, v1, Landroid/support/v7/widget/be$a;->a:I

    and-int/lit8 v3, v3, 0xe

    const/16 v4, 0xe

    if-ne v3, v4, :cond_4

    iget-object v3, v1, Landroid/support/v7/widget/be$a;->b:Landroid/support/v7/widget/ao$e$c;

    iget-object v4, v1, Landroid/support/v7/widget/be$a;->c:Landroid/support/v7/widget/ao$e$c;

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/be$b;->b(Landroid/support/v7/widget/ao$v;Landroid/support/v7/widget/ao$e$c;Landroid/support/v7/widget/ao$e$c;)V

    goto :goto_1

    :cond_4
    iget v3, v1, Landroid/support/v7/widget/be$a;->a:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0xc

    if-ne v3, v4, :cond_5

    iget-object v3, v1, Landroid/support/v7/widget/be$a;->b:Landroid/support/v7/widget/ao$e$c;

    iget-object v4, v1, Landroid/support/v7/widget/be$a;->c:Landroid/support/v7/widget/ao$e$c;

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/be$b;->c(Landroid/support/v7/widget/ao$v;Landroid/support/v7/widget/ao$e$c;Landroid/support/v7/widget/ao$e$c;)V

    goto :goto_1

    :cond_5
    iget v3, v1, Landroid/support/v7/widget/be$a;->a:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_6

    iget-object v3, v1, Landroid/support/v7/widget/be$a;->b:Landroid/support/v7/widget/ao$e$c;

    const/4 v4, 0x0

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/be$b;->a(Landroid/support/v7/widget/ao$v;Landroid/support/v7/widget/ao$e$c;Landroid/support/v7/widget/ao$e$c;)V

    goto :goto_1

    :cond_6
    iget v3, v1, Landroid/support/v7/widget/be$a;->a:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_7

    iget-object v3, v1, Landroid/support/v7/widget/be$a;->b:Landroid/support/v7/widget/ao$e$c;

    iget-object v4, v1, Landroid/support/v7/widget/be$a;->c:Landroid/support/v7/widget/ao$e$c;

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/be$b;->b(Landroid/support/v7/widget/ao$v;Landroid/support/v7/widget/ao$e$c;Landroid/support/v7/widget/ao$e$c;)V

    goto :goto_1

    :cond_7
    iget v0, v1, Landroid/support/v7/widget/be$a;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_8
    return-void
.end method

.method a(Landroid/support/v7/widget/ao$v;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v4/i/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/i/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/be$a;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/support/v7/widget/be$a;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/support/v7/widget/ao$v;)Landroid/support/v7/widget/ao$e$c;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/be;->a(Landroid/support/v7/widget/ao$v;I)Landroid/support/v7/widget/ao$e$c;

    move-result-object v0

    return-object v0
.end method

.method b()V
    .locals 0

    invoke-static {}, Landroid/support/v7/widget/be$a;->b()V

    return-void
.end method

.method b(Landroid/support/v7/widget/ao$v;Landroid/support/v7/widget/ao$e$c;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v4/i/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/i/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/be$a;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v7/widget/be$a;->a()Landroid/support/v7/widget/be$a;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v4/i/a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/i/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v1, v0, Landroid/support/v7/widget/be$a;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/be$a;->a:I

    iput-object p2, v0, Landroid/support/v7/widget/be$a;->b:Landroid/support/v7/widget/ao$e$c;

    return-void
.end method

.method c(Landroid/support/v7/widget/ao$v;)Landroid/support/v7/widget/ao$e$c;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/be;->a(Landroid/support/v7/widget/ao$v;I)Landroid/support/v7/widget/ao$e$c;

    move-result-object v0

    return-object v0
.end method

.method c(Landroid/support/v7/widget/ao$v;Landroid/support/v7/widget/ao$e$c;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v4/i/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/i/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/be$a;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v7/widget/be$a;->a()Landroid/support/v7/widget/be$a;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v4/i/a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/i/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Landroid/support/v7/widget/be$a;->c:Landroid/support/v7/widget/ao$e$c;

    iget v1, v0, Landroid/support/v7/widget/be$a;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/support/v7/widget/be$a;->a:I

    return-void
.end method

.method d(Landroid/support/v7/widget/ao$v;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v4/i/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/i/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/be$a;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/support/v7/widget/be$a;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e(Landroid/support/v7/widget/ao$v;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v4/i/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/i/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/be$a;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v7/widget/be$a;->a()Landroid/support/v7/widget/be$a;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v4/i/a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/i/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v1, v0, Landroid/support/v7/widget/be$a;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/support/v7/widget/be$a;->a:I

    return-void
.end method

.method f(Landroid/support/v7/widget/ao$v;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v4/i/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/i/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/be$a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, v0, Landroid/support/v7/widget/be$a;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/support/v7/widget/be$a;->a:I

    goto :goto_0
.end method

.method g(Landroid/support/v7/widget/ao$v;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/be;->b:Landroid/support/v4/i/e;

    invoke-virtual {v0}, Landroid/support/v4/i/e;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/be;->b:Landroid/support/v4/i/e;

    invoke-virtual {v1, v0}, Landroid/support/v4/i/e;->c(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/be;->b:Landroid/support/v4/i/e;

    invoke-virtual {v1, v0}, Landroid/support/v4/i/e;->a(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v4/i/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/i/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/be$a;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/support/v7/widget/be$a;->a(Landroid/support/v7/widget/be$a;)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public h(Landroid/support/v7/widget/ao$v;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/be;->f(Landroid/support/v7/widget/ao$v;)V

    return-void
.end method
