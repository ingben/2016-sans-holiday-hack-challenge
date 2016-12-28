.class Landroid/support/v7/a/l$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/j/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/a/l;->u()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/a/l;


# direct methods
.method constructor <init>(Landroid/support/v7/a/l;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/a/l$2;->a:Landroid/support/v7/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/j/bc;)Landroid/support/v4/j/bc;
    .locals 4

    invoke-virtual {p2}, Landroid/support/v4/j/bc;->b()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/a/l$2;->a:Landroid/support/v7/a/l;

    invoke-static {v1, v0}, Landroid/support/v7/a/l;->c(Landroid/support/v7/a/l;I)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/j/bc;->a()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v4/j/bc;->c()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v4/j/bc;->d()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/support/v4/j/bc;->a(IIII)Landroid/support/v4/j/bc;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/j/af;->a(Landroid/view/View;Landroid/support/v4/j/bc;)Landroid/support/v4/j/bc;

    move-result-object v0

    return-object v0
.end method
