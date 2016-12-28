.class public Lcom/northpolewonderland/santagram/PostDetails;
.super Landroid/support/v7/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/northpolewonderland/santagram/PostDetails$a;
    }
.end annotation


# instance fields
.field currUser:Lcom/parse/ParseUser;

.field followArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field followButt:Landroid/widget/Button;

.field likeButt:Landroid/widget/Button;

.field likesArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field pd:Landroid/app/ProgressDialog;

.field postObj:Lcom/parse/ParseObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/a/e;-><init>()V

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    iput-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails;->currUser:Lcom/parse/ParseUser;

    return-void
.end method


# virtual methods
.method fixMediaDir()V
    .locals 3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v2, "DCIM/Camera"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method public getImageUri(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 3

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/PostDetails;->fixMediaDir()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "image"

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method hidePreviewLayout()V
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f0d00db

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/PostDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x7d0

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Lcom/northpolewonderland/santagram/PostDetails$1;

    invoke-direct {v1, p0, v0}, Lcom/northpolewonderland/santagram/PostDetails$1;-><init>(Lcom/northpolewonderland/santagram/PostDetails;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const v0, 0x7f04003a

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/PostDetails;->setContentView(I)V

    invoke-super {p0, v2}, Landroid/support/v7/a/e;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/PostDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/northpolewonderland/santagram/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/PostDetails;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    const-string v1, "Post Details"

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/PostDetails;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/a/a;->a(Z)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/PostDetails;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/a/a;->b(Z)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails;->pd:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails;->pd:Landroid/app/ProgressDialog;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/PostDetails;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "objectID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->POSTS_CLASSE_NAME:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    iput-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    :try_start_0
    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->fetchIfNeeded()Lcom/parse/ParseObject;

    move-result-object v0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->POSTS_CLASSE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/PostDetails;->showPostDetails()V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/PostDetails;->queryFollow()V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/PostDetails;->queryLikeStatus()V
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v0, 0x7f0d00d2

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/PostDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails;->followButt:Landroid/widget/Button;

    const v0, 0x7f0d00d6

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/PostDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails;->likeButt:Landroid/widget/Button;

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails;->followButt:Landroid/widget/Button;

    new-instance v1, Lcom/northpolewonderland/santagram/PostDetails$2;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/PostDetails$2;-><init>(Lcom/northpolewonderland/santagram/PostDetails;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails;->likeButt:Landroid/widget/Button;

    new-instance v1, Lcom/northpolewonderland/santagram/PostDetails$3;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/PostDetails$3;-><init>(Lcom/northpolewonderland/santagram/PostDetails;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d00d9

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/PostDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/northpolewonderland/santagram/PostDetails$4;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/PostDetails$4;-><init>(Lcom/northpolewonderland/santagram/PostDetails;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d00da

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/PostDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/northpolewonderland/santagram/PostDetails$5;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/PostDetails$5;-><init>(Lcom/northpolewonderland/santagram/PostDetails;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d00d8

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/PostDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/northpolewonderland/santagram/PostDetails$6;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/PostDetails$6;-><init>(Lcom/northpolewonderland/santagram/PostDetails;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d006c

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/PostDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/northpolewonderland/santagram/PostDetails$a;

    invoke-direct {v1, p0, v0}, Lcom/northpolewonderland/santagram/PostDetails$a;-><init>(Lcom/northpolewonderland/santagram/PostDetails;Landroid/widget/ImageView;)V

    new-array v0, v2, [Ljava/lang/String;

    const v2, 0x7f07001a

    invoke-virtual {p0, v2}, Lcom/northpolewonderland/santagram/PostDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Lcom/northpolewonderland/santagram/PostDetails$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/parse/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/PostDetails;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method queryFollow()V
    .locals 4

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->POSTS_USER_POINTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->getParseUser(Ljava/lang/String;)Lcom/parse/ParseUser;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/northpolewonderland/santagram/PostDetails;->followArray:Ljava/util/List;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_CLASS_NAME:Ljava/lang/String;

    invoke-static {v1}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v1

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_A_USER:Ljava/lang/String;

    iget-object v3, p0, Lcom/northpolewonderland/santagram/PostDetails;->currUser:Lcom/parse/ParseUser;

    invoke-virtual {v1, v2, v3}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_IS_FOLLOWING:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    new-instance v0, Lcom/northpolewonderland/santagram/PostDetails$8;

    invoke-direct {v0, p0}, Lcom/northpolewonderland/santagram/PostDetails$8;-><init>(Lcom/northpolewonderland/santagram/PostDetails;)V

    invoke-virtual {v1, v0}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    return-void
.end method

.method queryLikeStatus()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails;->likesArray:Ljava/util/List;

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->LIKES_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->LIKES_LIKED_BY:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/PostDetails;->currUser:Lcom/parse/ParseUser;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->LIKES_POST_LIKED:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    new-instance v1, Lcom/northpolewonderland/santagram/PostDetails$9;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/PostDetails$9;-><init>(Lcom/northpolewonderland/santagram/PostDetails;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    return-void
.end method

.method showPostDetails()V
    .locals 2

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->POSTS_USER_POINTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    new-instance v1, Lcom/northpolewonderland/santagram/PostDetails$7;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/PostDetails$7;-><init>(Lcom/northpolewonderland/santagram/PostDetails;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->fetchIfNeededInBackground(Lcom/parse/GetCallback;)V

    return-void
.end method

.method showPreviewLayout()V
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f0d00db

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/PostDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
