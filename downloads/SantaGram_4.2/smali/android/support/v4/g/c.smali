.class public final Landroid/support/v4/g/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/g/c$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/support/v4/g/d;)Landroid/os/Parcelable$Creator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/g/d",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/g/f;->a(Landroid/support/v4/g/d;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/g/c$a;

    invoke-direct {v0, p0}, Landroid/support/v4/g/c$a;-><init>(Landroid/support/v4/g/d;)V

    goto :goto_0
.end method