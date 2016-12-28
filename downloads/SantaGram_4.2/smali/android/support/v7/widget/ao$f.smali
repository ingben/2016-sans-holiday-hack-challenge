.class Landroid/support/v7/widget/ao$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/ao$e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ao;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ao;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ao$f;->a:Landroid/support/v7/widget/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ao;Landroid/support/v7/widget/ao$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ao$f;-><init>(Landroid/support/v7/widget/ao;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/ao$v;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ao$v;->a(Z)V

    iget-object v0, p1, Landroid/support/v7/widget/ao$v;->g:Landroid/support/v7/widget/ao$v;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/ao$v;->h:Landroid/support/v7/widget/ao$v;

    if-nez v0, :cond_0

    iput-object v1, p1, Landroid/support/v7/widget/ao$v;->g:Landroid/support/v7/widget/ao$v;

    :cond_0
    iput-object v1, p1, Landroid/support/v7/widget/ao$v;->h:Landroid/support/v7/widget/ao$v;

    invoke-static {p1}, Landroid/support/v7/widget/ao$v;->e(Landroid/support/v7/widget/ao$v;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ao$f;->a:Landroid/support/v7/widget/ao;

    iget-object v1, p1, Landroid/support/v7/widget/ao$v;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v7/widget/ao;->c(Landroid/support/v7/widget/ao;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/ao$v;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ao$f;->a:Landroid/support/v7/widget/ao;

    iget-object v1, p1, Landroid/support/v7/widget/ao$v;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ao;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method
