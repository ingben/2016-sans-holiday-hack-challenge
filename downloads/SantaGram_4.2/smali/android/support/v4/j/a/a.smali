.class public final Landroid/support/v4/j/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/j/a/a$b;,
        Landroid/support/v4/j/a/a$a;,
        Landroid/support/v4/j/a/a$c;,
        Landroid/support/v4/j/a/a$d;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/j/a/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/j/a/a$b;

    invoke-direct {v0}, Landroid/support/v4/j/a/a$b;-><init>()V

    sput-object v0, Landroid/support/v4/j/a/a;->a:Landroid/support/v4/j/a/a$d;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/j/a/a$a;

    invoke-direct {v0}, Landroid/support/v4/j/a/a$a;-><init>()V

    sput-object v0, Landroid/support/v4/j/a/a;->a:Landroid/support/v4/j/a/a$d;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/j/a/a$c;

    invoke-direct {v0}, Landroid/support/v4/j/a/a$c;-><init>()V

    sput-object v0, Landroid/support/v4/j/a/a;->a:Landroid/support/v4/j/a/a$d;

    goto :goto_0
.end method

.method public static a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/j/a/k;
    .locals 1

    new-instance v0, Landroid/support/v4/j/a/k;

    invoke-direct {v0, p0}, Landroid/support/v4/j/a/k;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/j/a/a;->a:Landroid/support/v4/j/a/a$d;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/j/a/a$d;->a(Landroid/view/accessibility/AccessibilityEvent;I)V

    return-void
.end method

.method public static b(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1

    sget-object v0, Landroid/support/v4/j/a/a;->a:Landroid/support/v4/j/a/a$d;

    invoke-interface {v0, p0}, Landroid/support/v4/j/a/a$d;->a(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method
