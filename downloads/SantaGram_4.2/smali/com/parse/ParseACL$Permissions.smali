.class Lcom/parse/ParseACL$Permissions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseACL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Permissions"
.end annotation


# static fields
.field private static final READ_PERMISSION:Ljava/lang/String; = "read"

.field private static final WRITE_PERMISSION:Ljava/lang/String; = "write"


# instance fields
.field private final readPermission:Z

.field private final writePermission:Z


# direct methods
.method constructor <init>(Lcom/parse/ParseACL$Permissions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/parse/ParseACL$Permissions;->readPermission:Z

    iput-boolean v0, p0, Lcom/parse/ParseACL$Permissions;->readPermission:Z

    iget-boolean v0, p1, Lcom/parse/ParseACL$Permissions;->writePermission:Z

    iput-boolean v0, p0, Lcom/parse/ParseACL$Permissions;->writePermission:Z

    return-void
.end method

.method constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/parse/ParseACL$Permissions;->readPermission:Z

    iput-boolean p2, p0, Lcom/parse/ParseACL$Permissions;->writePermission:Z

    return-void
.end method

.method static createPermissionsFromJSONObject(Lorg/json/JSONObject;)Lcom/parse/ParseACL$Permissions;
    .locals 3

    const/4 v2, 0x0

    const-string v0, "read"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "write"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Lcom/parse/ParseACL$Permissions;

    invoke-direct {v2, v0, v1}, Lcom/parse/ParseACL$Permissions;-><init>(ZZ)V

    return-object v2
.end method


# virtual methods
.method getReadPermission()Z
    .locals 1

    iget-boolean v0, p0, Lcom/parse/ParseACL$Permissions;->readPermission:Z

    return v0
.end method

.method getWritePermission()Z
    .locals 1

    iget-boolean v0, p0, Lcom/parse/ParseACL$Permissions;->writePermission:Z

    return v0
.end method

.method toJSONObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-boolean v1, p0, Lcom/parse/ParseACL$Permissions;->readPermission:Z

    if-eqz v1, :cond_0

    const-string v1, "read"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    iget-boolean v1, p0, Lcom/parse/ParseACL$Permissions;->writePermission:Z

    if-eqz v1, :cond_1

    const-string v1, "write"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
