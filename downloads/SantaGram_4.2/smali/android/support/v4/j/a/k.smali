.class public Landroid/support/v4/j/a/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/j/a/k$d;,
        Landroid/support/v4/j/a/k$b;,
        Landroid/support/v4/j/a/k$a;,
        Landroid/support/v4/j/a/k$e;,
        Landroid/support/v4/j/a/k$c;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/j/a/k$c;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/j/a/k$d;

    invoke-direct {v0}, Landroid/support/v4/j/a/k$d;-><init>()V

    sput-object v0, Landroid/support/v4/j/a/k;->a:Landroid/support/v4/j/a/k$c;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/j/a/k$b;

    invoke-direct {v0}, Landroid/support/v4/j/a/k$b;-><init>()V

    sput-object v0, Landroid/support/v4/j/a/k;->a:Landroid/support/v4/j/a/k$c;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/j/a/k$a;

    invoke-direct {v0}, Landroid/support/v4/j/a/k$a;-><init>()V

    sput-object v0, Landroid/support/v4/j/a/k;->a:Landroid/support/v4/j/a/k$c;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v4/j/a/k$e;

    invoke-direct {v0}, Landroid/support/v4/j/a/k$e;-><init>()V

    sput-object v0, Landroid/support/v4/j/a/k;->a:Landroid/support/v4/j/a/k$c;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/j/a/k;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/j/a/k;->a:Landroid/support/v4/j/a/k$c;

    iget-object v1, p0, Landroid/support/v4/j/a/k;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/j/a/k$c;->b(Ljava/lang/Object;I)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    sget-object v0, Landroid/support/v4/j/a/k;->a:Landroid/support/v4/j/a/k$c;

    iget-object v1, p0, Landroid/support/v4/j/a/k;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/j/a/k$c;->a(Ljava/lang/Object;Z)V

    return-void
.end method

.method public b(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/j/a/k;->a:Landroid/support/v4/j/a/k$c;

    iget-object v1, p0, Landroid/support/v4/j/a/k;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/j/a/k$c;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public c(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/j/a/k;->a:Landroid/support/v4/j/a/k$c;

    iget-object v1, p0, Landroid/support/v4/j/a/k;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/j/a/k$c;->e(Ljava/lang/Object;I)V

    return-void
.end method

.method public d(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/j/a/k;->a:Landroid/support/v4/j/a/k$c;

    iget-object v1, p0, Landroid/support/v4/j/a/k;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/j/a/k$c;->c(Ljava/lang/Object;I)V

    return-void
.end method

.method public e(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/j/a/k;->a:Landroid/support/v4/j/a/k$c;

    iget-object v1, p0, Landroid/support/v4/j/a/k;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/j/a/k$c;->d(Ljava/lang/Object;I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Landroid/support/v4/j/a/k;

    iget-object v2, p0, Landroid/support/v4/j/a/k;->b:Ljava/lang/Object;

    if-nez v2, :cond_4

    iget-object v2, p1, Landroid/support/v4/j/a/k;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/support/v4/j/a/k;->b:Ljava/lang/Object;

    iget-object v3, p1, Landroid/support/v4/j/a/k;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public f(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/j/a/k;->a:Landroid/support/v4/j/a/k$c;

    iget-object v1, p0, Landroid/support/v4/j/a/k;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/j/a/k$c;->f(Ljava/lang/Object;I)V

    return-void
.end method

.method public g(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/j/a/k;->a:Landroid/support/v4/j/a/k$c;

    iget-object v1, p0, Landroid/support/v4/j/a/k;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/j/a/k$c;->g(Ljava/lang/Object;I)V

    return-void
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/j/a/k;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/j/a/k;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
