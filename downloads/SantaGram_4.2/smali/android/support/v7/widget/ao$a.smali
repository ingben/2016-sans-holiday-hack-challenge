.class public abstract Landroid/support/v7/widget/ao$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/ao$v;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/widget/ao$b;

.field private b:Z


# virtual methods
.method public abstract a()I
.end method

.method public a(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ao$v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public a(Landroid/support/v7/widget/ao$c;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ao$a;->a:Landroid/support/v7/widget/ao$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ao$b;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/ao$v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/ao$v;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public a(Landroid/support/v7/widget/ao$v;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ao$a;->a(Landroid/support/v7/widget/ao$v;I)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/ao;)V
    .locals 0

    return-void
.end method

.method public b(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ao$v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    const-string v0, "RV CreateView"

    invoke-static {v0}, Landroid/support/v4/g/g;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ao$a;->a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ao$v;

    move-result-object v0

    iput p2, v0, Landroid/support/v7/widget/ao$v;->e:I

    invoke-static {}, Landroid/support/v4/g/g;->a()V

    return-object v0
.end method

.method public b(Landroid/support/v7/widget/ao$c;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ao$a;->a:Landroid/support/v7/widget/ao$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ao$b;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Landroid/support/v7/widget/ao$v;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    iput p2, p1, Landroid/support/v7/widget/ao$v;->b:I

    invoke-virtual {p0}, Landroid/support/v7/widget/ao$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ao$a;->b(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/support/v7/widget/ao$v;->d:J

    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x207

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/ao$v;->a(II)V

    const-string v0, "RV OnBindView"

    invoke-static {v0}, Landroid/support/v4/g/g;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/ao$v;->u()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/ao$a;->a(Landroid/support/v7/widget/ao$v;ILjava/util/List;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/ao$v;->t()V

    invoke-static {}, Landroid/support/v4/g/g;->a()V

    return-void
.end method

.method public b(Landroid/support/v7/widget/ao;)V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/ao$a;->b:Z

    return v0
.end method

.method public b(Landroid/support/v7/widget/ao$v;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/support/v7/widget/ao$v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public d(Landroid/support/v7/widget/ao$v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method
