.class public Lcom/log/handler/LogHandlerUtils$MobileSubLog;
.super Ljava/lang/Object;
.source "LogHandlerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/log/handler/LogHandlerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobileSubLog"
.end annotation


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mEnabled:Z

.field private mSubName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "subLog"    # Ljava/lang/String;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/log/handler/LogHandlerUtils$MobileSubLog;->mSubName:Ljava/lang/String;

    .line 182
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/log/handler/LogHandlerUtils$MobileSubLog;->mEnabled:Z

    .line 183
    iput-object v0, p0, Lcom/log/handler/LogHandlerUtils$MobileSubLog;->mDisplayName:Ljava/lang/String;

    .line 189
    invoke-direct {p0, p1}, Lcom/log/handler/LogHandlerUtils$MobileSubLog;->initParms(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method private initParms(Ljava/lang/String;)V
    .registers 6
    .param p1, "subLog"    # Ljava/lang/String;

    .line 192
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "values":[Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz v0, :cond_34

    array-length v2, v0

    if-le v2, v1, :cond_34

    .line 194
    const/4 v2, 0x0

    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/log/handler/LogHandlerUtils$MobileSubLog;->mSubName:Ljava/lang/String;

    .line 195
    aget-object v1, v0, v1

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/log/handler/LogHandlerUtils$MobileSubLog;->mEnabled:Z

    .line 196
    aget-object v1, v0, v2

    iput-object v1, p0, Lcom/log/handler/LogHandlerUtils$MobileSubLog;->mDisplayName:Ljava/lang/String;

    .line 197
    if-eqz v1, :cond_3a

    const-string v2, "Log"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 198
    iget-object v1, p0, Lcom/log/handler/LogHandlerUtils$MobileSubLog;->mDisplayName:Ljava/lang/String;

    const-string v3, " Log"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/log/handler/LogHandlerUtils$MobileSubLog;->mDisplayName:Ljava/lang/String;

    goto :goto_3a

    .line 201
    :cond_34
    iput-object p1, p0, Lcom/log/handler/LogHandlerUtils$MobileSubLog;->mSubName:Ljava/lang/String;

    .line 202
    iput-boolean v1, p0, Lcom/log/handler/LogHandlerUtils$MobileSubLog;->mEnabled:Z

    .line 203
    iput-object p1, p0, Lcom/log/handler/LogHandlerUtils$MobileSubLog;->mDisplayName:Ljava/lang/String;

    .line 205
    :cond_3a
    :goto_3a
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/log/handler/LogHandlerUtils$MobileSubLog;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/log/handler/LogHandlerUtils$MobileSubLog;->mSubName:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingCommand()Ljava/lang/String;
    .registers 3

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/log/handler/LogHandlerUtils$MobileSubLog;->mSubName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/log/handler/LogHandlerUtils$MobileSubLog;->mEnabled:Z

    if-eqz v1, :cond_18

    const-string v1, "1"

    goto :goto_1a

    :cond_18
    const-string v1, "0"

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 210
    iget-boolean v0, p0, Lcom/log/handler/LogHandlerUtils$MobileSubLog;->mEnabled:Z

    return v0
.end method

.method public setEnabled(Z)Z
    .registers 3
    .param p1, "enableValue"    # Z

    .line 220
    iput-boolean p1, p0, Lcom/log/handler/LogHandlerUtils$MobileSubLog;->mEnabled:Z

    .line 221
    invoke-static {}, Lcom/log/handler/LogHandler;->getInstance()Lcom/log/handler/LogHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/log/handler/LogHandler;->setSubMobileLogEnable(Lcom/log/handler/LogHandlerUtils$MobileSubLog;)Z

    move-result v0

    return v0
.end method
