.class public Lcom/gsma/services/rcs/RcsServiceControl;
.super Ljava/lang/Object;
.source "RcsServiceControl.java"


# static fields
.field public static final RCS_STACK_PACKAGENAME:Ljava/lang/String; = "com.sec.imsservice"

.field private static sInstance:Lcom/gsma/services/rcs/RcsServiceControl;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/gsma/services/rcs/RcsServiceControl;->sInstance:Lcom/gsma/services/rcs/RcsServiceControl;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mContext:Landroid/content/Context;

    .line 33
    iput-object p1, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/RcsServiceControl;
    .registers 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 42
    if-eqz p0, :cond_c

    sget-object v0, Lcom/gsma/services/rcs/RcsServiceControl;->sInstance:Lcom/gsma/services/rcs/RcsServiceControl;

    if-nez v0, :cond_c

    .line 43
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/RcsServiceControl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 45
    :cond_c
    sget-object v0, Lcom/gsma/services/rcs/RcsServiceControl;->sInstance:Lcom/gsma/services/rcs/RcsServiceControl;

    return-object v0
.end method


# virtual methods
.method public isActivated()Z
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mContext:Landroid/content/Context;

    const-string v1, "ServiceActivated"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isActivationModeChangeable()Z
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mContext:Landroid/content/Context;

    .line 74
    const-string v1, "ModeChangeable"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mContext:Landroid/content/Context;

    const-string v1, "ServiceAvailable"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isServiceStarted()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/gsma/services/rcs/RcsServiceControl;->isActivated()Z

    move-result v0

    return v0
.end method

.method public setActivationMode(Z)V
    .registers 7
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsServiceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 87
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "ServiceActivated"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "whereArgs":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "key"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "WHERE_CLAUSE":Ljava/lang/String;
    sget-object v4, Lcom/gsma/services/rcs/CommonServiceConfiguration$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 91
    return-void
.end method
