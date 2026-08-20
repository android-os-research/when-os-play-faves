.class public Lcom/android/server/am/mars/database/FASEntityBuilder;
.super Ljava/lang/Object;
.source "FASEntityBuilder.java"


# instance fields
.field public strCurBatteryUsage:Ljava/lang/String;

.field public strDisableReason:Ljava/lang/String;

.field public strDisableResetTime:Ljava/lang/String;

.field public strDisableType:Ljava/lang/String;

.field public strExtras:Ljava/lang/String;

.field public strFasReason:Ljava/lang/String;

.field public strLevel:Ljava/lang/String;

.field public strMode:Ljava/lang/String;

.field public strNew:Ljava/lang/String;

.field public strPackageType:Ljava/lang/String;

.field public strPkgName:Ljava/lang/String;

.field public strPreBatteryUsage:Ljava/lang/String;

.field public strResetTime:Ljava/lang/String;

.field public strUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPackageType:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableResetTime:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPreBatteryUsage:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strCurBatteryUsage:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/am/mars/database/FASEntity;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_f

    .line 22
    :cond_9
    new-instance v0, Lcom/android/server/am/mars/database/FASEntity;

    invoke-direct {v0, p0}, Lcom/android/server/am/mars/database/FASEntity;-><init>(Lcom/android/server/am/mars/database/FASEntityBuilder;)V

    return-object v0

    :cond_f
    :goto_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStrCurBatteryUsage()Ljava/lang/String;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strCurBatteryUsage:Ljava/lang/String;

    return-object p0
.end method

.method public getStrDisableReason()Ljava/lang/String;
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    return-object p0
.end method

.method public getStrDisableResetTime()Ljava/lang/String;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableResetTime:Ljava/lang/String;

    return-object p0
.end method

.method public getStrDisableType()Ljava/lang/String;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    return-object p0
.end method

.method public getStrExtras()Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    return-object p0
.end method

.method public getStrFasReason()Ljava/lang/String;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    return-object p0
.end method

.method public getStrLevel()Ljava/lang/String;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    return-object p0
.end method

.method public getStrMode()Ljava/lang/String;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    return-object p0
.end method

.method public getStrNew()Ljava/lang/String;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    return-object p0
.end method

.method public getStrPackageType()Ljava/lang/String;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPackageType:Ljava/lang/String;

    return-object p0
.end method

.method public getStrPkgName()Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getStrPreBatteryUsage()Ljava/lang/String;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPreBatteryUsage:Ljava/lang/String;

    return-object p0
.end method

.method public getStrResetTime()Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    return-object p0
.end method

.method public getStrUid()Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    return-object p0
.end method

.method public setStrCurBatteryUsage(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strCurBatteryUsage:Ljava/lang/String;

    return-object p0
.end method

.method public setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    return-object p0
.end method

.method public setStrDisableResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableResetTime:Ljava/lang/String;

    return-object p0
.end method

.method public setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    return-object p0
.end method

.method public setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    return-object p0
.end method

.method public setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    return-object p0
.end method

.method public setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    return-object p0
.end method

.method public setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    return-object p0
.end method

.method public setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    return-object p0
.end method

.method public setStrPackageType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPackageType:Ljava/lang/String;

    return-object p0
.end method

.method public setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public setStrPreBatteryUsage(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPreBatteryUsage:Ljava/lang/String;

    return-object p0
.end method

.method public setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    return-object p0
.end method

.method public setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    return-object p0
.end method
