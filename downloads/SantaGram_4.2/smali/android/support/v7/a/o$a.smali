.class final Landroid/support/v7/a/o$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/view/menu/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/a/o;

.field private b:Z


# direct methods
.method private constructor <init>(Landroid/support/v7/a/o;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/a/o$a;->a:Landroid/support/v7/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/a/o;Landroid/support/v7/a/o$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/a/o$a;-><init>(Landroid/support/v7/a/o;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/menu/f;Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/a/o$a;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/a/o$a;->b:Z

    iget-object v0, p0, Landroid/support/v7/a/o$a;->a:Landroid/support/v7/a/o;

    invoke-static {v0}, Landroid/support/v7/a/o;->c(Landroid/support/v7/a/o;)Landroid/support/v7/widget/ae;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/widget/ae;->n()V

    iget-object v0, p0, Landroid/support/v7/a/o$a;->a:Landroid/support/v7/a/o;

    invoke-static {v0}, Landroid/support/v7/a/o;->a(Landroid/support/v7/a/o;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/a/o$a;->a:Landroid/support/v7/a/o;

    invoke-static {v0}, Landroid/support/v7/a/o;->a(Landroid/support/v7/a/o;)Landroid/view/Window$Callback;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/a/o$a;->b:Z

    goto :goto_0
.end method

.method public a(Landroid/support/v7/view/menu/f;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/a/o$a;->a:Landroid/support/v7/a/o;

    invoke-static {v0}, Landroid/support/v7/a/o;->a(Landroid/support/v7/a/o;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/o$a;->a:Landroid/support/v7/a/o;

    invoke-static {v0}, Landroid/support/v7/a/o;->a(Landroid/support/v7/a/o;)Landroid/view/Window$Callback;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
