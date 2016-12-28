.class Landroid/support/v7/a/r$1;
.super Landroid/support/v4/j/ba;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/a/r;


# direct methods
.method constructor <init>(Landroid/support/v7/a/r;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/a/r$1;->a:Landroid/support/v7/a/r;

    invoke-direct {p0}, Landroid/support/v4/j/ba;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/a/r$1;->a:Landroid/support/v7/a/r;

    invoke-static {v0}, Landroid/support/v7/a/r;->a(Landroid/support/v7/a/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/r$1;->a:Landroid/support/v7/a/r;

    invoke-static {v0}, Landroid/support/v7/a/r;->b(Landroid/support/v7/a/r;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/r$1;->a:Landroid/support/v7/a/r;

    invoke-static {v0}, Landroid/support/v7/a/r;->b(Landroid/support/v7/a/r;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/j/af;->b(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/a/r$1;->a:Landroid/support/v7/a/r;

    invoke-static {v0}, Landroid/support/v7/a/r;->c(Landroid/support/v7/a/r;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/j/af;->b(Landroid/view/View;F)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/r$1;->a:Landroid/support/v7/a/r;

    invoke-static {v0}, Landroid/support/v7/a/r;->c(Landroid/support/v7/a/r;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/a/r$1;->a:Landroid/support/v7/a/r;

    invoke-static {v0}, Landroid/support/v7/a/r;->c(Landroid/support/v7/a/r;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object v0, p0, Landroid/support/v7/a/r$1;->a:Landroid/support/v7/a/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/a/r;->a(Landroid/support/v7/a/r;Landroid/support/v7/view/h;)Landroid/support/v7/view/h;

    iget-object v0, p0, Landroid/support/v7/a/r$1;->a:Landroid/support/v7/a/r;

    invoke-virtual {v0}, Landroid/support/v7/a/r;->j()V

    iget-object v0, p0, Landroid/support/v7/a/r$1;->a:Landroid/support/v7/a/r;

    invoke-static {v0}, Landroid/support/v7/a/r;->d(Landroid/support/v7/a/r;)Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/a/r$1;->a:Landroid/support/v7/a/r;

    invoke-static {v0}, Landroid/support/v7/a/r;->d(Landroid/support/v7/a/r;)Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/j/af;->s(Landroid/view/View;)V

    :cond_1
    return-void
.end method
