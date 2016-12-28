.class final Landroid/support/v7/a/o$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/view/menu/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/a/o;


# direct methods
.method private constructor <init>(Landroid/support/v7/a/o;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/a/o$c;->a:Landroid/support/v7/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/a/o;Landroid/support/v7/a/o$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/a/o$c;-><init>(Landroid/support/v7/a/o;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/menu/f;Z)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/a/o$c;->a:Landroid/support/v7/a/o;

    invoke-static {v0}, Landroid/support/v7/a/o;->a(Landroid/support/v7/a/o;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/o$c;->a:Landroid/support/v7/a/o;

    invoke-static {v0}, Landroid/support/v7/a/o;->a(Landroid/support/v7/a/o;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/f;)Z
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/o$c;->a:Landroid/support/v7/a/o;

    invoke-static {v0}, Landroid/support/v7/a/o;->a(Landroid/support/v7/a/o;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/o$c;->a:Landroid/support/v7/a/o;

    invoke-static {v0}, Landroid/support/v7/a/o;->a(Landroid/support/v7/a/o;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
