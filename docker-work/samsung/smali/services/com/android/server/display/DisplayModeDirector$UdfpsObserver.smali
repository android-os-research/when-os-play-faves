.class public Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;
.super Landroid/hardware/fingerprint/IUdfpsHbmListener$Stub;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UdfpsObserver"
.end annotation


# instance fields
.field public final mLocalHbmEnabled:Landroid/util/SparseBooleanArray;

.field public final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayModeDirector;)V
    .registers 2

    .line 2951
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IUdfpsHbmListener$Stub;-><init>()V

    .line 2952
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mLocalHbmEnabled:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/DisplayModeDirector;Lcom/android/server/display/DisplayModeDirector$UdfpsObserver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 7

    const-string v0, "  UdfpsObserver"

    .line 3000
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    mLocalHbmEnabled: "

    .line 3001
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3002
    :goto_b
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mLocalHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 3003
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mLocalHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 3004
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mLocalHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "enabled"

    goto :goto_26

    :cond_24
    const-string v2, "disabled"

    .line 3005
    :goto_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      Display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_45
    return-void
.end method

.method public observe()V
    .registers 2

    .line 2955
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2956
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_d

    .line 2958
    invoke-interface {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setUdfpsHbmListener(Landroid/hardware/fingerprint/IUdfpsHbmListener;)V

    :cond_d
    return-void
.end method

.method public onHbmDisabled(I)V
    .registers 4

    .line 2971
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 2972
    :try_start_8
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->updateHbmStateLocked(IZ)V

    .line 2973
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public onHbmEnabled(I)V
    .registers 4

    .line 2964
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2965
    :try_start_8
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->updateHbmStateLocked(IZ)V

    .line 2966
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final updateHbmStateLocked(IZ)V
    .registers 4

    .line 2977
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mLocalHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2978
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->updateVoteLocked(I)V

    return-void
.end method

.method public final updateVoteLocked(I)V
    .registers 8

    .line 2983
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mLocalHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2984
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    const/4 v1, 0x0

    .line 2986
    array-length v2, v0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_2a

    aget-object v4, v0, v3

    .line 2987
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    cmpl-float v5, v5, v1

    if-lez v5, :cond_27

    .line 2988
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 2991
    :cond_2a
    invoke-static {v1, v1}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    .line 2996
    :goto_30
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/16 v1, 0x10

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method
