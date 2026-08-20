.class public final Lcom/android/server/autofill/FieldClassificationStrategy;
.super Ljava/lang/Object;
.source "FieldClassificationStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;,
        Lcom/android/server/autofill/FieldClassificationStrategy$Command;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FieldClassificationStrategy"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public mQueuedCommands:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/autofill/FieldClassificationStrategy$Command;",
            ">;"
        }
    .end annotation
.end field

.field public mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mServiceConnection:Landroid/content/ServiceConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$HsI6SEJ_0C7SHKGwX-GqOiDZB6I(Landroid/content/res/Resources;I)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/autofill/FieldClassificationStrategy;->lambda$getDefaultAlgorithm$1(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JTht6rz4D7TFRLr4464FZmmH-_c(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/service/autofill/IAutofillFieldClassificationService;)V
    .registers 9

    invoke-static/range {p0 .. p8}, Lcom/android/server/autofill/FieldClassificationStrategy;->lambda$calculateScores$2(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/service/autofill/IAutofillFieldClassificationService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dfpVDRL3QTDuvVXxuzNTbcE8IOk(Landroid/content/res/Resources;I)[Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/autofill/FieldClassificationStrategy;->lambda$getAvailableAlgorithms$0(Landroid/content/res/Resources;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/autofill/FieldClassificationStrategy;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQueuedCommands(Lcom/android/server/autofill/FieldClassificationStrategy;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemoteService(Lcom/android/server/autofill/FieldClassificationStrategy;)Landroid/service/autofill/IAutofillFieldClassificationService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmQueuedCommands(Lcom/android/server/autofill/FieldClassificationStrategy;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRemoteService(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/IAutofillFieldClassificationService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    .line 79
    iput-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    .line 80
    iput p2, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mUserId:I

    return-void
.end method

.method public static synthetic lambda$calculateScores$2(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/service/autofill/IAutofillFieldClassificationService;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 272
    invoke-interface/range {v0 .. v8}, Landroid/service/autofill/IAutofillFieldClassificationService;->calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic lambda$getAvailableAlgorithms$0(Landroid/content/res/Resources;I)[Ljava/lang/String;
    .registers 2

    .line 237
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getDefaultAlgorithm$1(Landroid/content/res/Resources;I)Ljava/lang/String;
    .registers 2

    .line 245
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallback;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 272
    new-instance v9, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda1;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda1;-><init>(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    move-object v0, p0

    invoke-virtual {p0, v9}, Lcom/android/server/autofill/FieldClassificationStrategy;->connectAndRun(Lcom/android/server/autofill/FieldClassificationStrategy$Command;)V

    return-void
.end method

.method public final connectAndRun(Lcom/android/server/autofill/FieldClassificationStrategy$Command;)V
    .registers 8

    .line 141
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_b6

    if-eqz v1, :cond_32

    .line 144
    :try_start_7
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_13

    const-string v1, "FieldClassificationStrategy"

    const-string/jumbo v2, "running command right away"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_13
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;

    invoke-interface {p1, p0}, Lcom/android/server/autofill/FieldClassificationStrategy$Command;->run(Landroid/service/autofill/IAutofillFieldClassificationService;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_18} :catch_19
    .catchall {:try_start_7 .. :try_end_18} :catchall_b6

    goto :goto_30

    :catch_19
    move-exception p0

    :try_start_1a
    const-string p1, "FieldClassificationStrategy"

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception calling service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_30
    monitor-exit v0

    return-void

    .line 151
    :cond_32
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_3e

    const-string v1, "FieldClassificationStrategy"

    const-string/jumbo v2, "service is null; queuing command"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_3e
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-nez v1, :cond_4a

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    .line 155
    :cond_4a
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz p1, :cond_55

    monitor-exit v0

    return-void

    .line 161
    :cond_55
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_60

    const-string p1, "FieldClassificationStrategy"

    const-string v1, "creating connection"

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_60
    new-instance p1, Lcom/android/server/autofill/FieldClassificationStrategy$1;

    invoke-direct {p1, p0}, Lcom/android/server/autofill/FieldClassificationStrategy$1;-><init>(Lcom/android/server/autofill/FieldClassificationStrategy;)V

    iput-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 214
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object p1

    .line 215
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_85

    const-string v1, "FieldClassificationStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binding to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    if-eqz p1, :cond_b4

    .line 217
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 218
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_93
    .catchall {:try_start_1a .. :try_end_93} :catchall_b6

    .line 221
    :try_start_93
    iget-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    iget p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mUserId:I

    .line 222
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 221
    invoke-virtual {p1, v1, v5, v2, p0}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 223
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_ab

    const-string p0, "FieldClassificationStrategy"

    const-string p1, "bound"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catchall {:try_start_93 .. :try_end_ab} :catchall_af

    .line 225
    :cond_ab
    :try_start_ab
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b4

    :catchall_af
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 226
    throw p0

    .line 228
    :cond_b4
    :goto_b4
    monitor-exit v0

    return-void

    :catchall_b6
    move-exception p0

    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_ab .. :try_end_b8} :catchall_b6

    throw p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    .line 277
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 278
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "User ID: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mUserId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 279
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Queued commands: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    const-string v2, "N/A"

    if-nez v1, :cond_23

    .line 281
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2a

    .line 283
    :cond_23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 285
    :goto_2a
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Implementation: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v0, :cond_38

    .line 287
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 290
    :cond_38
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    :try_start_3f
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Available algorithms: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getAvailableAlgorithms()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "Default algorithm: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_61} :catch_62

    goto :goto_6b

    :catch_62
    move-exception p0

    const-string p1, "ERROR CALLING SERVICE: "

    .line 297
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_6b
    return-void
.end method

.method public getAvailableAlgorithms()[Ljava/lang/String;
    .registers 3

    .line 236
    new-instance v0, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.autofill.field_classification.available_algorithms"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getMetadataValue(Ljava/lang/String;Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultAlgorithm()Ljava/lang/String;
    .registers 3

    .line 245
    new-instance v0, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.autofill.field_classification.default_algorithm"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getMetadataValue(Ljava/lang/String;Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getMetadataValue(Ljava/lang/String;Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 253
    :cond_8
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 257
    :try_start_e
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_14} :catch_1f

    .line 263
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 264
    invoke-interface {p2, p0, p1}, Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;->get(Landroid/content/res/Resources;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_1f
    move-exception p0

    .line 259
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error getting application resources for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FieldClassificationStrategy"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public final getServiceComponentName()Landroid/content/ComponentName;
    .registers 5

    .line 105
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 108
    :cond_8
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v2, "android.permission.BIND_AUTOFILL_FIELD_CLASSIFICATION_SERVICE"

    .line 110
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v3, "FieldClassificationStrategy"

    if-nez p0, :cond_39

    .line 111
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not require permission "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 116
    :cond_39
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_52

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "getServiceComponentName(): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    return-object v1
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 6

    .line 85
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "FieldClassificationStrategy"

    if-nez v0, :cond_16

    const-string/jumbo p0, "no external services package!"

    .line 88
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 92
    :cond_16
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.autofill.AutofillFieldClassificationService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x84

    invoke-virtual {p0, v3, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 96
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_33

    goto :goto_34

    :cond_33
    return-object p0

    :cond_34
    :goto_34
    const-string p0, "No valid components found."

    .line 97
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public reset()V
    .registers 6

    .line 121
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_3b

    .line 123
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_13

    const-string v1, "FieldClassificationStrategy"

    const-string/jumbo v2, "reset(): unbinding service."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_49

    .line 125
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_1a} :catch_1b
    .catchall {:try_start_13 .. :try_end_1a} :catchall_49

    goto :goto_37

    :catch_1b
    move-exception v1

    :try_start_1c
    const-string v2, "FieldClassificationStrategy"

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reset(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    const/4 v1, 0x0

    .line 130
    iput-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    goto :goto_47

    .line 132
    :cond_3b
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_47

    const-string p0, "FieldClassificationStrategy"

    const-string/jumbo v1, "reset(): service is not bound. Do nothing."

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_47
    :goto_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_1c .. :try_end_4b} :catchall_49

    throw p0
.end method
