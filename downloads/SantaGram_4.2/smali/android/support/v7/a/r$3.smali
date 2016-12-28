.class Landroid/support/v7/a/r$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/j/bb;


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

    iput-object p1, p0, Landroid/support/v7/a/r$3;->a:Landroid/support/v7/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/a/r$3;->a:Landroid/support/v7/a/r;

    invoke-static {v0}, Landroid/support/v7/a/r;->c(Landroid/support/v7/a/r;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
