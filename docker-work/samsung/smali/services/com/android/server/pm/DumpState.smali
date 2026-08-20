.class public final Lcom/android/server/pm/DumpState;
.super Ljava/lang/Object;
.source "DumpState.java"


# static fields
.field public static final DUMP_ACTIVITY_RESOLVERS:I = 0x4

.field public static final DUMP_APEX:I = 0x2000000

.field public static final DUMP_CHANGES:I = 0x400000

.field public static final DUMP_COMPILER_STATS:I = 0x200000

.field public static final DUMP_CONTENT_RESOLVERS:I = 0x20

.field public static final DUMP_DEXOPT:I = 0x100000

.field public static final DUMP_DOMAIN_PREFERRED:I = 0x40000

.field public static final DUMP_DOMAIN_VERIFIER:I = 0x20000

.field public static final DUMP_FEATURES:I = 0x2

.field public static final DUMP_FROZEN:I = 0x80000

.field public static final DUMP_INSTALLS:I = 0x10000

.field public static final DUMP_KEYSETS:I = 0x4000

.field public static final DUMP_KNOWN_PACKAGES:I = 0x8000000

.field public static final DUMP_LIBS:I = 0x1

.field public static final DUMP_MESSAGES:I = 0x200

.field public static final DUMP_PACKAGES:I = 0x80

.field public static final DUMP_PERMISSIONS:I = 0x40

.field public static final DUMP_PER_UID_READ_TIMEOUTS:I = 0x10000000

.field public static final DUMP_PREFERRED:I = 0x1000

.field public static final DUMP_PREFERRED_XML:I = 0x2000

.field public static final DUMP_PROTECTED_BROADCASTS:I = 0x40000000

.field public static final DUMP_PROVIDERS:I = 0x400

.field public static final DUMP_QUERIES:I = 0x4000000

.field public static final DUMP_RECEIVER_RESOLVERS:I = 0x10

.field public static final DUMP_SERVICE_PERMISSIONS:I = 0x1000000

.field public static final DUMP_SERVICE_RESOLVERS:I = 0x8

.field public static final DUMP_SHARED_USERS:I = 0x100

.field public static final DUMP_SNAPSHOT_STATISTICS:I = 0x20000000

.field public static final DUMP_VERIFIERS:I = 0x800

.field public static final DUMP_VERSION:I = 0x8000

.field public static final DUMP_VOLUMES:I = 0x800000

.field public static final OPTION_DUMP_ALL_COMPONENTS:I = 0x2

.field public static final OPTION_SHOW_FILTERS:I = 0x1

.field public static final OPTION_SKIP_PERMISSIONS:I = 0x4


# instance fields
.field public mBrief:Z

.field public mCheckIn:Z

.field public mFullPreferred:Z

.field public mOptions:I

.field public mSharedUser:Lcom/android/server/pm/SharedUserSetting;

.field public mTargetPackageName:Ljava/lang/String;

.field public mTitlePrinted:Z

.field public mTypes:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSharedUser()Lcom/android/server/pm/SharedUserSetting;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/android/server/pm/DumpState;->mSharedUser:Lcom/android/server/pm/SharedUserSetting;

    return-object p0
.end method

.method public getTargetPackageName()Ljava/lang/String;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/server/pm/DumpState;->mTargetPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getTitlePrinted()Z
    .registers 1

    .line 95
    iget-boolean p0, p0, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    return p0
.end method

.method public isBrief()Z
    .registers 1

    .line 135
    iget-boolean p0, p0, Lcom/android/server/pm/DumpState;->mBrief:Z

    return p0
.end method

.method public isCheckIn()Z
    .registers 1

    .line 127
    iget-boolean p0, p0, Lcom/android/server/pm/DumpState;->mCheckIn:Z

    return p0
.end method

.method public isDumping(I)Z
    .registers 4

    .line 69
    iget p0, p0, Lcom/android/server/pm/DumpState;->mTypes:I

    const/4 v0, 0x1

    if-nez p0, :cond_a

    const/16 v1, 0x2000

    if-eq p1, v1, :cond_a

    return v0

    :cond_a
    and-int/2addr p0, p1

    if-eqz p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isFullPreferred()Z
    .registers 1

    .line 119
    iget-boolean p0, p0, Lcom/android/server/pm/DumpState;->mFullPreferred:Z

    return p0
.end method

.method public isOptionEnabled(I)Z
    .registers 2

    .line 81
    iget p0, p0, Lcom/android/server/pm/DumpState;->mOptions:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public onTitlePrinted()Z
    .registers 3

    .line 89
    iget-boolean v0, p0, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    const/4 v1, 0x1

    .line 90
    iput-boolean v1, p0, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    return v0
.end method

.method public setBrief(Z)V
    .registers 2

    .line 139
    iput-boolean p1, p0, Lcom/android/server/pm/DumpState;->mBrief:Z

    return-void
.end method

.method public setCheckIn(Z)V
    .registers 2

    .line 131
    iput-boolean p1, p0, Lcom/android/server/pm/DumpState;->mCheckIn:Z

    return-void
.end method

.method public setDump(I)V
    .registers 3

    .line 77
    iget v0, p0, Lcom/android/server/pm/DumpState;->mTypes:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/pm/DumpState;->mTypes:I

    return-void
.end method

.method public setFullPreferred(Z)V
    .registers 2

    .line 123
    iput-boolean p1, p0, Lcom/android/server/pm/DumpState;->mFullPreferred:Z

    return-void
.end method

.method public setOptionEnabled(I)V
    .registers 3

    .line 85
    iget v0, p0, Lcom/android/server/pm/DumpState;->mOptions:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/pm/DumpState;->mOptions:I

    return-void
.end method

.method public setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/android/server/pm/DumpState;->mSharedUser:Lcom/android/server/pm/SharedUserSetting;

    return-void
.end method

.method public setTargetPackageName(Ljava/lang/String;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/android/server/pm/DumpState;->mTargetPackageName:Ljava/lang/String;

    return-void
.end method

.method public setTitlePrinted(Z)V
    .registers 2

    .line 99
    iput-boolean p1, p0, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    return-void
.end method
