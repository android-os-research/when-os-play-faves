.class public Lcom/android/server/am/mars/database/MARsExemptionManager;
.super Ljava/lang/Object;
.source "MARsExemptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/database/MARsExemptionManager$MARsExemptionManagerHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MARsExemptionManager"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mExemptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 49

    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.sec.android.daemonapp"

    const-string v2, "com.sec.phone"

    const-string v3, "com.sec.android.app.factorykeystring"

    const-string v4, "com.samsung.android.authfw"

    const-string v5, "com.android.server.telecom"

    const-string v6, "com.android.server.telecom:ui"

    const-string v7, "com.samsung.android.mdx.kit"

    const-string v8, "com.skt.prod.dialer"

    const-string v9, "com.samsung.android.service.aircommand"

    const-string v10, "com.samsung.android.easysetup"

    const-string v11, "com.samsung.android.easysetup:IcControlService"

    const-string v12, "com.samsung.android.app.cocktailbarservice:cocktailsettings"

    const-string v13, "com.android.providers.calendar"

    const-string v14, "com.samsung.android.messaging"

    const-string v15, "com.samsung.android.app.notes"

    const-string v16, "com.samsung.cmh"

    const-string v17, "com.samsung.cmh:CMH"

    const-string v18, "com.sec.facatfunction"

    const-string v19, "com.skt.skaf.OA00199800"

    const-string v20, "com.google.android.ims"

    const-string v21, "com.samsung.android.app.telephonyui"

    const-string v22, "com.samsung.android.dialer"

    const-string v23, "com.sec.android.app.music"

    const-string v24, "com.samsung.android.service.peoplestripe"

    const-string v25, "com.samsung.android.bixby.agent"

    const-string v26, "com.samsung.android.inputshare"

    const-string v27, "com.samsung.android.app.galaxyfinder"

    const-string v28, "com.samsung.android.videolist"

    const-string v29, "com.samsung.android.video"

    const-string v30, "com.samsung.android.app.contacts"

    const-string v31, "com.tms"

    const-string v32, "com.samsung.android.incallui"

    const-string v33, "com.samsung.ipservice"

    const-string/jumbo v34, "skplanet.musicmate"

    const-string v35, "com.samsung.android.rubin.app"

    const-string v36, "com.samsung.android.email.provider"

    const-string v37, "com.sec.android.app.clockpackage"

    const-string v38, "com.samsung.android.soundassistant"

    const-string v39, "com.samsung.android.smartsuggestions:core"

    const-string v40, "com.samsung.android.scs"

    const-string v41, "com.samsung.android.app.routines"

    const-string v42, "com.samsung.android.samsungpass"

    const-string v43, "com.samsung.android.service.stplatform"

    const-string v44, "com.google.android.apps.scone"

    const-string v45, "com.sec.android.gallery3d"

    const-string v46, "com.samsung.android.oneconnect"

    const-string v47, "android.process.media"

    filled-new-array/range {v1 .. v47}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/mars/database/MARsExemptionManager;->mExemptionList:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/database/MARsExemptionManager-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/database/MARsExemptionManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/database/MARsExemptionManager;
    .registers 1

    .line 25
    invoke-static {}, Lcom/android/server/am/mars/database/MARsExemptionManager$MARsExemptionManagerHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/database/MARsExemptionManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getExemptionList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsExemptionManager;->mExemptionList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsExemptionManager;->mContext:Landroid/content/Context;

    return-void
.end method
