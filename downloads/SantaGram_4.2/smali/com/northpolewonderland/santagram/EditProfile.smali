.class public Lcom/northpolewonderland/santagram/EditProfile;
.super Landroid/support/v7/a/e;


# instance fields
.field a:Landroid/app/ProgressDialog;

.field b:Lcom/parse/ParseUser;

.field c:Lcom/northpolewonderland/santagram/a;

.field d:Z

.field e:I

.field f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/a/e;-><init>()V

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    iput-object v0, p0, Lcom/northpolewonderland/santagram/EditProfile;->b:Lcom/parse/ParseUser;

    new-instance v0, Lcom/northpolewonderland/santagram/a;

    invoke-direct {v0, p0}, Lcom/northpolewonderland/santagram/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/northpolewonderland/santagram/EditProfile;->c:Lcom/northpolewonderland/santagram/a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/northpolewonderland/santagram/EditProfile;->e:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/northpolewonderland/santagram/EditProfile;->f:I

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/a/e;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lcom/northpolewonderland/santagram/EditProfile;->e:I

    if-ne p1, v1, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    :goto_0
    iget-boolean v0, p0, Lcom/northpolewonderland/santagram/EditProfile;->d:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0d0087

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/EditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v1, p0, Lcom/northpolewonderland/santagram/EditProfile;->f:I

    if-ne p1, v1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/EditProfile;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    move-object v1, v0

    goto :goto_0

    :cond_3
    const v0, 0x7f0d0089

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/EditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x0

    const v6, 0x7f070014

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04002a

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/EditProfile;->setContentView(I)V

    invoke-super {p0, v1}, Landroid/support/v7/a/e;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/EditProfile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/northpolewonderland/santagram/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f07001e

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/EditProfile;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v6}, Lcom/northpolewonderland/santagram/EditProfile;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Remote debug logging is Enabled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/EditProfile;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/a/a;->a(Z)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/EditProfile;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/a/a;->b(Z)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/EditProfile;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v1

    const-string v3, "Edit Profile"

    invoke-virtual {v1, v3}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/northpolewonderland/santagram/EditProfile;->a:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/EditProfile;->a:Landroid/app/ProgressDialog;

    const v3, 0x7f070018

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setTitle(I)V

    iget-object v1, p0, Lcom/northpolewonderland/santagram/EditProfile;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmssZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "udid"

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "freemem"

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v1, Lcom/northpolewonderland/santagram/EditProfile$1;

    invoke-direct {v1, p0, v0}, Lcom/northpolewonderland/santagram/EditProfile$1;-><init>(Lcom/northpolewonderland/santagram/EditProfile;Lorg/json/JSONObject;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    const v0, 0x7f0d0087

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/EditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/EditProfile;->b:Lcom/parse/ParseUser;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->USER_AVATAR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseFile;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/northpolewonderland/santagram/EditProfile$2;

    invoke-direct {v2, p0, v0}, Lcom/northpolewonderland/santagram/EditProfile$2;-><init>(Lcom/northpolewonderland/santagram/EditProfile;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/GetDataCallback;)V

    :cond_1
    new-instance v1, Lcom/northpolewonderland/santagram/EditProfile$3;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/EditProfile$3;-><init>(Lcom/northpolewonderland/santagram/EditProfile;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0089

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/EditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/EditProfile;->b:Lcom/parse/ParseUser;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->USER_COVER_IMAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseFile;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/northpolewonderland/santagram/EditProfile$4;

    invoke-direct {v2, p0, v0}, Lcom/northpolewonderland/santagram/EditProfile$4;-><init>(Lcom/northpolewonderland/santagram/EditProfile;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/GetDataCallback;)V

    :cond_2
    new-instance v1, Lcom/northpolewonderland/santagram/EditProfile$5;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/EditProfile$5;-><init>(Lcom/northpolewonderland/santagram/EditProfile;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d008c

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/EditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/EditProfile;->b:Lcom/parse/ParseUser;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->USER_FULLNAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0d008e

    invoke-virtual {p0, v1}, Lcom/northpolewonderland/santagram/EditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/EditProfile;->b:Lcom/parse/ParseUser;

    sget-object v3, Lcom/northpolewonderland/santagram/Configs;->USER_ABOUT_ME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0d0090

    invoke-virtual {p0, v2}, Lcom/northpolewonderland/santagram/EditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/northpolewonderland/santagram/EditProfile;->b:Lcom/parse/ParseUser;

    sget-object v4, Lcom/northpolewonderland/santagram/Configs;->USER_EMAIL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0d0091

    invoke-virtual {p0, v2}, Lcom/northpolewonderland/santagram/EditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/northpolewonderland/santagram/EditProfile$6;

    invoke-direct {v3, p0, v0, v1}, Lcom/northpolewonderland/santagram/EditProfile$6;-><init>(Lcom/northpolewonderland/santagram/EditProfile;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    invoke-virtual {p0, v6}, Lcom/northpolewonderland/santagram/EditProfile;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Remote debug logging is Disabled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v6}, Lcom/northpolewonderland/santagram/EditProfile;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error posting JSON debug data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
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
    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/EditProfile;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
