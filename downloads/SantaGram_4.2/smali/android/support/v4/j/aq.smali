.class public final Landroid/support/v4/j/aq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/j/aq$d;,
        Landroid/support/v4/j/aq$c;,
        Landroid/support/v4/j/aq$b;,
        Landroid/support/v4/j/aq$a;,
        Landroid/support/v4/j/aq$e;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/j/aq$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/j/aq$d;

    invoke-direct {v0}, Landroid/support/v4/j/aq$d;-><init>()V

    sput-object v0, Landroid/support/v4/j/aq;->a:Landroid/support/v4/j/aq$e;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/j/aq$c;

    invoke-direct {v0}, Landroid/support/v4/j/aq$c;-><init>()V

    sput-object v0, Landroid/support/v4/j/aq;->a:Landroid/support/v4/j/aq$e;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/j/aq$b;

    invoke-direct {v0}, Landroid/support/v4/j/aq$b;-><init>()V

    sput-object v0, Landroid/support/v4/j/aq;->a:Landroid/support/v4/j/aq$e;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v4/j/aq$a;

    invoke-direct {v0}, Landroid/support/v4/j/aq$a;-><init>()V

    sput-object v0, Landroid/support/v4/j/aq;->a:Landroid/support/v4/j/aq$e;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewConfiguration;)I
    .locals 1

    sget-object v0, Landroid/support/v4/j/aq;->a:Landroid/support/v4/j/aq$e;

    invoke-interface {v0, p0}, Landroid/support/v4/j/aq$e;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/ViewConfiguration;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/j/aq;->a:Landroid/support/v4/j/aq$e;

    invoke-interface {v0, p0}, Landroid/support/v4/j/aq$e;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    return v0
.end method
