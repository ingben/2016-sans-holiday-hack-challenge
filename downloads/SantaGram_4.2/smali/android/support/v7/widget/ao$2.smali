.class Landroid/support/v7/widget/ao$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ao;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ao;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ao$2;->a:Landroid/support/v7/widget/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ao$2;->a:Landroid/support/v7/widget/ao;

    iget-object v0, v0, Landroid/support/v7/widget/ao;->g:Landroid/support/v7/widget/ao$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ao$2;->a:Landroid/support/v7/widget/ao;

    iget-object v0, v0, Landroid/support/v7/widget/ao;->g:Landroid/support/v7/widget/ao$e;

    invoke-virtual {v0}, Landroid/support/v7/widget/ao$e;->a()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ao$2;->a:Landroid/support/v7/widget/ao;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ao;->b(Landroid/support/v7/widget/ao;Z)Z

    return-void
.end method
