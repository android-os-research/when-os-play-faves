.class public Lcom/android/server/textservices/TextServicesManagerService;
.super Lcom/android/internal/textservice/ITextServicesManager$Stub;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;,
        Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;,
        Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;,
        Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;,
        Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;,
        Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;,
        Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;,
        Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    }
.end annotation


# static fields
.field public static final DBG:Z = false

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mMonitor:Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;

.field public final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/textservices/TextServicesManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/textservices/TextServicesManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserData(Lcom/android/server/textservices/TextServicesManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfindAvailSystemSpellCheckerLocked(Lcom/android/server/textservices/TextServicesManagerService;Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/textservices/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetCurrentSpellCheckerForUser(Lcom/android/server/textservices/TextServicesManagerService;I)Landroid/view/textservice/SpellCheckerInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetCurrentSpellCheckerLocked(Lcom/android/server/textservices/TextServicesManagerService;Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/textservices/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 79
    const-class v0, Lcom/android/server/textservices/TextServicesManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 327
    invoke-direct {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;-><init>()V

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 328
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 329
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    .line 330
    new-instance v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/textservices/TextServicesManagerService;Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor-IA;)V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mMonitor:Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;

    .line 331
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method


# virtual methods
.method public final bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z
    .registers 6

    if-eqz p1, :cond_10

    if-nez p2, :cond_5

    goto :goto_10

    .line 403
    :cond_5
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    return p0

    .line 399
    :cond_10
    :goto_10
    sget-object p0, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--- bind failed: service = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", conn = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", userId ="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 719
    iget-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 721
    :cond_b
    array-length p1, p3

    const/4 v0, 0x0

    if-eqz p1, :cond_80

    array-length p1, p3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1e

    aget-object p1, p3, v0

    const-string v2, "-a"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_80

    .line 733
    :cond_1e
    array-length p1, p3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_7a

    aget-object p1, p3, v0

    const-string v0, "--user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_7a

    .line 737
    :cond_2d
    aget-object p1, p3, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 738
    iget-object p3, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p3

    if-nez p3, :cond_41

    const-string p0, "Non-existent user."

    .line 740
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 743
    :cond_41
    iget-object p3, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    if-nez p3, :cond_51

    const-string p0, "User needs to unlock first."

    .line 745
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 748
    :cond_51
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_54
    const-string v0, "Current Text Services Manager state:"

    .line 749
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 751
    invoke-static {p3, p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$mdump(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V

    .line 752
    monitor-exit p0

    goto :goto_a4

    :catchall_77
    move-exception p1

    monitor-exit p0
    :try_end_79
    .catchall {:try_start_54 .. :try_end_79} :catchall_77

    throw p1

    :cond_7a
    :goto_7a
    const-string p0, "Invalid arguments to text services."

    .line 734
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 723
    :cond_80
    :goto_80
    iget-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_83
    const-string p3, "Current Text Services Manager state:"

    .line 724
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "  Users:"

    .line 725
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    iget-object p3, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    :goto_93
    if-ge v0, p3, :cond_a3

    .line 728
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 729
    invoke-static {v1, p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$mdump(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    .line 731
    :cond_a3
    monitor-exit p1

    :goto_a4
    return-void

    :catchall_a5
    move-exception p0

    monitor-exit p1
    :try_end_a7
    .catchall {:try_start_83 .. :try_end_a7} :catchall_a5

    throw p0
.end method

.method public final findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 13

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 418
    invoke-static {p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$fgetmSpellCheckerList(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_d
    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_29

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textservice/SpellCheckerInfo;

    .line 419
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_d

    .line 420
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 424
    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_38

    .line 426
    sget-object p0, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string p1, "no available spell checker services found"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_38
    const/4 v1, 0x0

    if-eqz p1, :cond_52

    move v3, v1

    :goto_3c
    if-ge v3, p2, :cond_52

    .line 431
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/textservice/SpellCheckerInfo;

    .line 432
    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    return-object v4

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 444
    :cond_52
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 446
    invoke-static {p0}, Lcom/android/server/textservices/LocaleUtils;->getSuitableLocalesForSpellChecker(Ljava/util/Locale;)Ljava/util/ArrayList;

    move-result-object p0

    .line 451
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v3, v1

    :goto_67
    if-ge v3, p1, :cond_9b

    .line 453
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Locale;

    move v5, v1

    :goto_70
    if-ge v5, p2, :cond_98

    .line 456
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/textservice/SpellCheckerInfo;

    .line 457
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v7

    move v8, v1

    :goto_7d
    if-ge v8, v7, :cond_95

    .line 459
    invoke-virtual {v6, v8}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v9

    .line 461
    invoke-virtual {v9}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v9

    .line 460
    invoke-static {v9}, Lcom/android/internal/inputmethod/SubtypeLocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v9

    .line 462
    invoke-virtual {v4, v9}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_92

    return-object v6

    :cond_92
    add-int/lit8 v8, v8, 0x1

    goto :goto_7d

    :cond_95
    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    :cond_98
    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    :cond_9b
    if-le p2, v2, :cond_a4

    .line 473
    sget-object p0, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string p1, "more than one spell checker service found, picking first"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_a4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/textservice/SpellCheckerInfo;

    return-object p0
.end method

.method public finishSpellCheckerService(ILcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .registers 6

    .line 674
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 676
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 677
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object p0

    if-nez p0, :cond_e

    .line 678
    monitor-exit v0

    return-void

    .line 680
    :cond_e
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 681
    invoke-static {p0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$fgetmSpellCheckerBindGroups(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object p0

    .line 683
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    if-nez v1, :cond_2e

    goto :goto_1f

    .line 686
    :cond_2e
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 688
    :cond_32
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_37
    if-ge v1, p0, :cond_45

    .line 690
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v2, p2}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 692
    :cond_45
    monitor-exit v0

    return-void

    :catchall_47
    move-exception p0

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_6 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public getCurrentSpellChecker(ILjava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 3

    .line 490
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 491
    iget-object p2, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 492
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object p0

    if-nez p0, :cond_f

    const/4 p0, 0x0

    .line 493
    monitor-exit p2

    return-object p0

    .line 495
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p0

    monitor-exit p2

    return-object p0

    :catchall_15
    move-exception p0

    .line 496
    monitor-exit p2
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;
    .registers 3

    .line 480
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_3
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    if-eqz p0, :cond_12

    .line 482
    invoke-virtual {p0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p0

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 483
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getCurrentSpellCheckerSubtype(IZ)Landroid/view/textservice/SpellCheckerSubtype;
    .registers 7

    .line 504
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 510
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_f

    .line 512
    monitor-exit v0

    return-object v1

    :cond_f
    const/4 v2, 0x0

    .line 515
    invoke-virtual {p1, v2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getSelectedSpellCheckerSubtype(I)I

    move-result v3

    .line 519
    invoke-virtual {p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p1

    .line 520
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 521
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_79

    if-eqz p1, :cond_78

    .line 522
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_78

    :cond_2e
    if-nez v3, :cond_33

    if-nez p2, :cond_33

    return-object v1

    .line 533
    :cond_33
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result p2

    if-eqz v3, :cond_4a

    :goto_39
    if-ge v2, p2, :cond_49

    .line 537
    invoke-virtual {p1, v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object p0

    .line 538
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v0

    if-ne v0, v3, :cond_46

    return-object p0

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_49
    return-object v1

    :cond_4a
    if-nez p0, :cond_4d

    return-object v1

    .line 551
    :cond_4d
    :goto_4d
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result p2

    if-ge v2, p2, :cond_78

    .line 552
    invoke-virtual {p1, v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object p2

    .line 553
    invoke-virtual {p2}, Landroid/view/textservice/SpellCheckerSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v0

    .line 554
    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    return-object p2

    :cond_62
    if-nez v1, :cond_75

    if-eqz v0, :cond_75

    .line 559
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_75

    move-object v1, p2

    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    :cond_78
    :goto_78
    return-object v1

    :catchall_79
    move-exception p0

    .line 521
    :try_start_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw p0
.end method

.method public final getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 765
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    return-object p0
.end method

.method public getEnabledSpellCheckers(I)[Landroid/view/textservice/SpellCheckerInfo;
    .registers 3

    .line 650
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 652
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 653
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object p0

    if-nez p0, :cond_f

    const/4 p0, 0x0

    .line 654
    monitor-exit v0

    return-object p0

    .line 656
    :cond_f
    invoke-static {p0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$fgetmSpellCheckerList(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/ArrayList;

    move-result-object p0

    .line 664
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/textservice/SpellCheckerInfo;

    monitor-exit v0

    return-object p0

    :catchall_21
    move-exception p0

    .line 665
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public getSpellCheckerService(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;I)V
    .registers 18

    move-object v0, p0

    move-object v1, p2

    .line 571
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 572
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_68

    if-eqz p4, :cond_68

    if-nez p5, :cond_10

    goto :goto_68

    .line 577
    :cond_10
    iget-object v2, v0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 578
    :try_start_13
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object v3

    if-nez v3, :cond_1b

    .line 579
    monitor-exit v2

    return-void

    .line 581
    :cond_1b
    invoke-static {v3}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$fgetmSpellCheckerMap(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v4

    .line 582
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 583
    monitor-exit v2

    return-void

    .line 585
    :cond_27
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/textservice/SpellCheckerInfo;

    .line 586
    invoke-static {v3}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$fgetmSpellCheckerBindGroups(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v5

    .line 588
    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 589
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-nez v1, :cond_52

    .line 591
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_41
    .catchall {:try_start_13 .. :try_end_41} :catchall_65

    .line 593
    :try_start_41
    invoke-virtual {p0, v4, v3}, Lcom/android/server/textservices/TextServicesManagerService;->startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    move-result-object v1
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_4c

    .line 595
    :try_start_45
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v1, :cond_52

    .line 599
    monitor-exit v2

    return-void

    :catchall_4c
    move-exception v0

    move-object v1, v0

    .line 595
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 596
    throw v1

    .line 605
    :cond_52
    new-instance v0, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;

    move-object v3, v0

    move v4, v5

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v3 .. v9}, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;-><init>(ILjava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;I)V

    invoke-virtual {v1, v0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->getISpellCheckerSessionOrQueueLocked(Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V

    .line 608
    monitor-exit v2

    return-void

    :catchall_65
    move-exception v0

    monitor-exit v2
    :try_end_67
    .catchall {:try_start_45 .. :try_end_67} :catchall_65

    throw v0

    .line 573
    :cond_68
    :goto_68
    sget-object v0, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v1, "getSpellCheckerService: Invalid input."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final initializeInternalStateLocked(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    if-nez v0, :cond_16

    .line 338
    new-instance v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;-><init>(ILandroid/content/Context;)V

    .line 339
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    :cond_16
    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$minitializeTextServicesData(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 343
    invoke-virtual {v0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p1

    if-nez p1, :cond_27

    const/4 p1, 0x0

    .line 345
    invoke-virtual {p0, p1, v0}, Lcom/android/server/textservices/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p1

    .line 349
    invoke-virtual {p0, p1, v0}, Lcom/android/server/textservices/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    :cond_27
    return-void
.end method

.method public isSpellCheckerEnabled(I)Z
    .registers 3

    .line 613
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 615
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 616
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object p0

    if-nez p0, :cond_f

    const/4 p0, 0x0

    .line 617
    monitor-exit v0

    return p0

    .line 619
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->isSpellCheckerEnabled()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 620
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public onStopUser(I)V
    .registers 4

    .line 310
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_3
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    if-nez v1, :cond_f

    .line 313
    monitor-exit v0

    return-void

    .line 315
    :cond_f
    invoke-virtual {p0, v1}, Lcom/android/server/textservices/TextServicesManagerService;->unbindServiceLocked(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 316
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 317
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public onUnlockUser(I)V
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->initializeInternalStateLocked(I)V

    .line 324
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V
    .registers 5

    if-eqz p1, :cond_5

    .line 705
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    .line 709
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 711
    :try_start_9
    invoke-virtual {p2, p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->setCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_10

    .line 713
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 714
    throw p0
.end method

.method public final startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    .registers 7

    .line 629
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 630
    new-instance v1, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    invoke-static {p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$fgetmSpellCheckerBindGroups(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;-><init>(Lcom/android/server/textservices/TextServicesManagerService;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 632
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.textservice.SpellCheckerService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 637
    invoke-static {p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$fgetmUserId(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)I

    move-result p1

    const v3, 0x800001

    invoke-virtual {p0, v2, v1, v3, p1}, Lcom/android/server/textservices/TextServicesManagerService;->bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    move-result p1

    if-nez p1, :cond_31

    .line 639
    sget-object p0, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Failed to get a spell checker service."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 642
    :cond_31
    new-instance p1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-direct {p1, p0, v1}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;-><init>(Lcom/android/server/textservices/TextServicesManagerService;Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;)V

    .line 644
    invoke-static {p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$fgetmSpellCheckerBindGroups(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final unbindServiceLocked(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V
    .registers 3

    .line 407
    invoke-static {p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$fgetmSpellCheckerBindGroups(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object p0

    .line 408
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 409
    invoke-virtual {v0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    goto :goto_c

    .line 411
    :cond_1c
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final verifyUser(I)V
    .registers 5

    .line 696
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_26

    .line 698
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cross-user interaction requires INTERACT_ACROSS_USERS_FULL. userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " callingUserId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    return-void
.end method
