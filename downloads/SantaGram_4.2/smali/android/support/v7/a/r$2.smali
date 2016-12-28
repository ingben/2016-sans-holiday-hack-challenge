.class Landroid/support/v7/a/r$2;
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

    iput-object p1, p0, Landroid/support/v7/a/r$2;->a:Landroid/support/v7/a/r;

    invoke-direct {p0}, Landroid/support/v4/j/ba;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/a/r$2;->a:Landroid/support/v7/a/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/a/r;->a(Landroid/support/v7/a/r;Landroid/support/v7/view/h;)Landroid/support/v7/view/h;

    iget-object v0, p0, Landroid/support/v7/a/r$2;->a:Landroid/support/v7/a/r;

    invoke-static {v0}, Landroid/support/v7/a/r;->c(Landroid/support/v7/a/r;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->requestLayout()V

    return-void
.end method
