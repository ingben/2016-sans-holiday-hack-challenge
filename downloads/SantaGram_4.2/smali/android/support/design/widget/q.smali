.class Landroid/support/design/widget/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/q$c;,
        Landroid/support/design/widget/q$b;,
        Landroid/support/design/widget/q$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/design/widget/q$c;


# direct methods
.method constructor <init>(Landroid/support/design/widget/q$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/q;->a:Landroid/support/design/widget/q$c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/q;->a:Landroid/support/design/widget/q$c;

    invoke-virtual {v0}, Landroid/support/design/widget/q$c;->a()V

    return-void
.end method

.method public a(FF)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/q;->a:Landroid/support/design/widget/q$c;

    invoke-virtual {v0, p1, p2}, Landroid/support/design/widget/q$c;->a(FF)V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/q;->a:Landroid/support/design/widget/q$c;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/q$c;->a(I)V

    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/q;->a:Landroid/support/design/widget/q$c;

    invoke-virtual {v0, p1, p2}, Landroid/support/design/widget/q$c;->a(II)V

    return-void
.end method

.method public a(Landroid/support/design/widget/q$a;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/q;->a:Landroid/support/design/widget/q$c;

    new-instance v1, Landroid/support/design/widget/q$1;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/q$1;-><init>(Landroid/support/design/widget/q;Landroid/support/design/widget/q$a;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/q$c;->a(Landroid/support/design/widget/q$c$b;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/q;->a:Landroid/support/design/widget/q$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/q$c;->a(Landroid/support/design/widget/q$c$b;)V

    goto :goto_0
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/q;->a:Landroid/support/design/widget/q$c;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/q$c;->a(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/q;->a:Landroid/support/design/widget/q$c;

    invoke-virtual {v0}, Landroid/support/design/widget/q$c;->b()Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/q;->a:Landroid/support/design/widget/q$c;

    invoke-virtual {v0}, Landroid/support/design/widget/q$c;->c()I

    move-result v0

    return v0
.end method

.method public d()F
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/q;->a:Landroid/support/design/widget/q$c;

    invoke-virtual {v0}, Landroid/support/design/widget/q$c;->d()F

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/q;->a:Landroid/support/design/widget/q$c;

    invoke-virtual {v0}, Landroid/support/design/widget/q$c;->e()V

    return-void
.end method
