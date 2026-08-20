.class public Lcom/android/server/am/mars/database/FASEntity;
.super Ljava/lang/Object;
.source "FASEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private strCurBatteryUsage:Ljava/lang/String;

.field private strDisableReason:Ljava/lang/String;

.field private strDisableResetTIme:Ljava/lang/String;

.field private strDisableType:Ljava/lang/String;

.field private strExtras:Ljava/lang/String;

.field private strFasReason:Ljava/lang/String;

.field private strLevel:Ljava/lang/String;

.field private strMode:Ljava/lang/String;

.field private strNew:Ljava/lang/String;

.field private strPackageType:Ljava/lang/String;

.field private strPkgName:Ljava/lang/String;

.field private strPreBatteryUsage:Ljava/lang/String;

.field private strResetTime:Ljava/lang/String;

.field private strUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ZZ)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrPkgName(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 42
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrUid(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 43
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrMode(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 44
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrNew(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 45
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrFasReason(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 46
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrExtras(Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 47
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrResetTime(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 48
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrPackageType(Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 49
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrLevel(Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 50
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrDisableType(Ljava/lang/String;)V

    if-eqz p2, :cond_69

    const/16 p2, 0xd

    .line 52
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntity;->setStrPreBatteryUsage(Ljava/lang/String;)V

    const/16 p2, 0xe

    .line 53
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/FASEntity;->setStrCurBatteryUsage(Ljava/lang/String;)V

    :cond_69
    if-eqz p3, :cond_74

    const/16 p2, 0xf

    .line 56
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASEntity;->setStrDisableReason(Ljava/lang/String;)V

    :cond_74
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/mars/database/FASEntityBuilder;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrPkgName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPkgName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strUid:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strMode:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrNew()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strNew:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrFasReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strFasReason:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrExtras()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strExtras:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrResetTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strResetTime:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrPackageType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPackageType:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrLevel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strLevel:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrDisableType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableType:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrDisableResetTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableResetTIme:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrPreBatteryUsage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPreBatteryUsage:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrDisableReason()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStrCurBatteryUsage()Ljava/lang/String;
    .registers 1

    .line 110
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strCurBatteryUsage:Ljava/lang/String;

    return-object p0
.end method

.method public getStrDisableReason()Ljava/lang/String;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableReason:Ljava/lang/String;

    return-object p0
.end method

.method public getStrDisableResetTime()Ljava/lang/String;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableResetTIme:Ljava/lang/String;

    return-object p0
.end method

.method public getStrDisableType()Ljava/lang/String;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableType:Ljava/lang/String;

    return-object p0
.end method

.method public getStrExtras()Ljava/lang/String;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strExtras:Ljava/lang/String;

    return-object p0
.end method

.method public getStrFasReason()Ljava/lang/String;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strFasReason:Ljava/lang/String;

    return-object p0
.end method

.method public getStrLevel()Ljava/lang/String;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strLevel:Ljava/lang/String;

    return-object p0
.end method

.method public getStrMode()Ljava/lang/String;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strMode:Ljava/lang/String;

    return-object p0
.end method

.method public getStrNew()Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strNew:Ljava/lang/String;

    return-object p0
.end method

.method public getStrPackageType()Ljava/lang/String;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPackageType:Ljava/lang/String;

    return-object p0
.end method

.method public getStrPkgName()Ljava/lang/String;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getStrPreBatteryUsage()Ljava/lang/String;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPreBatteryUsage:Ljava/lang/String;

    return-object p0
.end method

.method public getStrResetTime()Ljava/lang/String;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strResetTime:Ljava/lang/String;

    return-object p0
.end method

.method public getStrUid()Ljava/lang/String;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strUid:Ljava/lang/String;

    return-object p0
.end method

.method public setStrCurBatteryUsage(Ljava/lang/String;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strCurBatteryUsage:Ljava/lang/String;

    return-void
.end method

.method public setStrDisableReason(Ljava/lang/String;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableReason:Ljava/lang/String;

    return-void
.end method

.method public setStrDisableResetTime(Ljava/lang/String;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableResetTIme:Ljava/lang/String;

    return-void
.end method

.method public setStrDisableType(Ljava/lang/String;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableType:Ljava/lang/String;

    return-void
.end method

.method public setStrExtras(Ljava/lang/String;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strExtras:Ljava/lang/String;

    return-void
.end method

.method public setStrFasReason(Ljava/lang/String;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strFasReason:Ljava/lang/String;

    return-void
.end method

.method public setStrLevel(Ljava/lang/String;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strLevel:Ljava/lang/String;

    return-void
.end method

.method public setStrMode(Ljava/lang/String;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strMode:Ljava/lang/String;

    return-void
.end method

.method public setStrNew(Ljava/lang/String;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strNew:Ljava/lang/String;

    return-void
.end method

.method public setStrPackageType(Ljava/lang/String;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strPackageType:Ljava/lang/String;

    return-void
.end method

.method public setStrPkgName(Ljava/lang/String;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strPkgName:Ljava/lang/String;

    return-void
.end method

.method public setStrPreBatteryUsage(Ljava/lang/String;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strPreBatteryUsage:Ljava/lang/String;

    return-void
.end method

.method public setStrResetTime(Ljava/lang/String;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strResetTime:Ljava/lang/String;

    return-void
.end method

.method public setStrUid(Ljava/lang/String;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strUid:Ljava/lang/String;

    return-void
.end method
