.class public Lcom/android/server/appop/AppOpsService$Shell;
.super Landroid/os/ShellCommand;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Shell"
.end annotation


# static fields
.field public static final sBinder:Landroid/os/Binder;


# instance fields
.field public attributionTag:Ljava/lang/String;

.field public final mInterface:Lcom/android/internal/app/IAppOpsService;

.field public final mInternal:Lcom/android/server/appop/AppOpsService;

.field public mToken:Landroid/os/IBinder;

.field public mode:I

.field public modeStr:Ljava/lang/String;

.field public nonpackageUid:I

.field public op:I

.field public opStr:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public packageUid:I

.field public targetsUid:Z

.field public userId:I


# direct methods
.method public static bridge synthetic -$$Nest$smstrOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 5563
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/appop/AppOpsService$Shell;->sBinder:Landroid/os/Binder;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/appop/AppOpsService;)V
    .registers 4

    .line 5567
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    const/4 v0, 0x0

    .line 5554
    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 5568
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 5569
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 5570
    invoke-static {}, Landroid/app/AppOpsManager;->getClientId()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method public static strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 4

    .line 5602
    sget-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_15

    .line 5603
    sget-object v1, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    return v0

    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 5608
    :cond_15
    :try_start_15
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_19} :catch_1a

    return p0

    .line 5611
    :catch_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not valid"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 4

    .line 5586
    :try_start_0
    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    .line 5590
    :catch_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_9} :catch_a

    return p0

    .line 5594
    :catch_a
    :try_start_a
    invoke-static {p0}, Landroid/app/AppOpsManager;->strDebugOpToOp(Ljava/lang/String;)I

    move-result p0
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 5596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 2

    .line 5575
    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService;->onShellCommand(Lcom/android/server/appop/AppOpsService$Shell;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public onHelp()V
    .registers 1

    .line 5580
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 5581
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService;->dumpCommandHelp(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public parseUserOpMode(ILjava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x2

    .line 5616
    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    const/4 v0, 0x0

    .line 5617
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 5618
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 5619
    :cond_8
    :goto_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    const-string v1, "--user"

    .line 5620
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 5621
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    goto :goto_8

    .line 5623
    :cond_21
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v1, :cond_28

    .line 5624
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    goto :goto_8

    .line 5625
    :cond_28
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 5626
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 5631
    :cond_2e
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    const/4 v1, -0x1

    if-nez v0, :cond_39

    const-string p0, "Error: Operation not specified."

    .line 5632
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 5635
    :cond_39
    invoke-static {v0, p2}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-gez v0, :cond_42

    return v1

    .line 5639
    :cond_42
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-eqz v0, :cond_4f

    .line 5640
    invoke-static {v0, p2}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result p1

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    if-gez p1, :cond_51

    return v1

    .line 5644
    :cond_4f
    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    :cond_51
    const/4 p0, 0x0

    return p0
.end method

.method public parseUserPackageOp(ZLjava/io/PrintWriter;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x2

    .line 5650
    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    const/4 v1, 0x0

    .line 5651
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 5652
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 5653
    :cond_8
    :goto_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_49

    const-string v4, "--user"

    .line 5654
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 5655
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    goto :goto_8

    :cond_22
    const-string v4, "--uid"

    .line 5656
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 5657
    iput-boolean v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    goto :goto_8

    :cond_2d
    const-string v4, "--attribution"

    .line 5658
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 5659
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    goto :goto_8

    .line 5661
    :cond_3c
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-nez v4, :cond_43

    .line 5662
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_8

    .line 5663
    :cond_43
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v4, :cond_8

    .line 5664
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 5669
    :cond_49
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v4, -0x1

    if-nez v2, :cond_54

    const-string p0, "Error: Package name not specified."

    .line 5670
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 5672
    :cond_54
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v2, :cond_60

    if-eqz p1, :cond_60

    const-string p0, "Error: Operation not specified."

    .line 5673
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_60
    if-eqz v2, :cond_6b

    .line 5677
    invoke-static {v2, p2}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result p1

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-gez p1, :cond_6d

    return v4

    .line 5682
    :cond_6b
    iput v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 5684
    :cond_6d
    iget p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    if-ne p1, v0, :cond_77

    .line 5685
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 5687
    :cond_77
    iput v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 5689
    :try_start_79
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I
    :try_end_81
    .catch Ljava/lang/NumberFormatException; {:try_start_79 .. :try_end_81} :catch_81

    .line 5692
    :catch_81
    iget p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    const/4 v0, 0x0

    if-ne p1, v4, :cond_11c

    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v3, :cond_11c

    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x75

    if-ne p1, v2, :cond_11c

    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/16 v2, 0x2e

    .line 5693
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_11c

    move p1, v3

    .line 5695
    :goto_a3
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x39

    const/16 v6, 0x30

    if-ge p1, v2, :cond_c2

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_c2

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 5696
    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v2, v5, :cond_c2

    add-int/lit8 p1, p1, 0x1

    goto :goto_a3

    :cond_c2
    if-le p1, v3, :cond_11c

    .line 5699
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_11c

    .line 5700
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5702
    :try_start_d2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5703
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/2addr p1, v3

    move v3, p1

    .line 5706
    :goto_de
    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_f9

    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_f9

    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 5707
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-gt v8, v5, :cond_f9

    add-int/lit8 v3, v3, 0x1

    goto :goto_de

    :cond_f9
    if-le v3, p1, :cond_11c

    .line 5711
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 5713
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v3, 0x61

    if-ne v7, v3, :cond_112

    add-int/lit16 p1, p1, 0x2710

    .line 5715
    invoke-static {v2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    goto :goto_11c

    :cond_112
    const/16 v3, 0x73

    if-ne v7, v3, :cond_11c

    .line 5718
    invoke-static {v2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I
    :try_end_11c
    .catch Ljava/lang/NumberFormatException; {:try_start_d2 .. :try_end_11c} :catch_11c

    .line 5727
    :catch_11c
    :cond_11c
    :goto_11c
    iget p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    if-eq p1, v4, :cond_123

    .line 5728
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_162

    .line 5730
    :cond_123
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$smresolveUid(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    if-gez p1, :cond_13d

    .line 5732
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const-wide/16 v2, 0x2000

    iget v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    invoke-interface {p1, v1, v2, v3, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p1

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 5735
    :cond_13d
    iget p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    if-gez p1, :cond_162

    .line 5736
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: No UID for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_162
    :goto_162
    return v0
.end method
