.class Landroid/support/v4/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/b/b$b;,
        Landroid/support/v4/b/b$a;
    }
.end annotation


# direct methods
.method private static a(Landroid/support/v4/b/b$a;)Landroid/app/SharedElementCallback;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/support/v4/b/b$b;

    invoke-direct {v0, p0}, Landroid/support/v4/b/b$b;-><init>(Landroid/support/v4/b/b$a;)V

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/b/b$a;)V
    .locals 1

    invoke-static {p1}, Landroid/support/v4/b/b;->a(Landroid/support/v4/b/b$a;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/media/session/MediaController;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setMediaController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    return-void
.end method

.method public static b(Landroid/app/Activity;Landroid/support/v4/b/b$a;)V
    .locals 1

    invoke-static {p1}, Landroid/support/v4/b/b;->a(Landroid/support/v4/b/b$a;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    return-void
.end method
