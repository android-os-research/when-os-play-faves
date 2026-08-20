.class public Lcom/android/server/policy/SystemKeyManager;
.super Ljava/lang/Object;
.source "SystemKeyManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SystemKeyManager"


# instance fields
.field public mEndCallKeyRequestedComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mFocusedDisplayId:I

.field public mFocusedWindow:Ljava/lang/String;

.field public mFocusedWindowType:I

.field public mHomeKeyRequestedComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mKeyComponentsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet;",
            ">;"
        }
    .end annotation
.end field

.field public mMetaKeyPass:Z

.field public mMetaKeyRequestedComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPolicy:Lcom/android/server/policy/PhoneWindowManager;

.field public mPowerKeyRequestedComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRecentBTKeyRequestedComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRecentKeyRequestedComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSFinderRequestedComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSysrqKeyRequestedComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTopActivity:Ljava/lang/String;

.field public mTopActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mHomeKeyRequestedComponents:Ljava/util/HashSet;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mPowerKeyRequestedComponents:Ljava/util/HashSet;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mRecentKeyRequestedComponents:Ljava/util/HashSet;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mEndCallKeyRequestedComponents:Ljava/util/HashSet;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mRecentBTKeyRequestedComponents:Ljava/util/HashSet;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mSysrqKeyRequestedComponents:Ljava/util/HashSet;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mSFinderRequestedComponents:Ljava/util/HashSet;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mKeyComponentsMap:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyRequestedComponents:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mTopActivity:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    const/4 v1, 0x0

    .line 67
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyPass:Z

    .line 68
    iput-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mTopActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindowType:I

    .line 71
    iput v0, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedDisplayId:I

    .line 74
    iput-object p1, p0, Lcom/android/server/policy/SystemKeyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 76
    iget-object p1, p0, Lcom/android/server/policy/SystemKeyManager;->mKeyComponentsMap:Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SystemKeyManager;->mHomeKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object p1, p0, Lcom/android/server/policy/SystemKeyManager;->mKeyComponentsMap:Ljava/util/HashMap;

    const/16 v0, 0x1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SystemKeyManager;->mPowerKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object p1, p0, Lcom/android/server/policy/SystemKeyManager;->mKeyComponentsMap:Ljava/util/HashMap;

    const/16 v0, 0xbb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SystemKeyManager;->mRecentKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object p1, p0, Lcom/android/server/policy/SystemKeyManager;->mKeyComponentsMap:Ljava/util/HashMap;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SystemKeyManager;->mEndCallKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object p1, p0, Lcom/android/server/policy/SystemKeyManager;->mKeyComponentsMap:Ljava/util/HashMap;

    const/16 v0, 0x3e9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SystemKeyManager;->mRecentBTKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object p1, p0, Lcom/android/server/policy/SystemKeyManager;->mKeyComponentsMap:Ljava/util/HashMap;

    const/16 v0, 0x78

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SystemKeyManager;->mSysrqKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object p1, p0, Lcom/android/server/policy/SystemKeyManager;->mKeyComponentsMap:Ljava/util/HashMap;

    const/16 v0, 0x428

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/policy/SystemKeyManager;->mSFinderRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    .line 380
    monitor-enter p0

    .line 381
    :try_start_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopActivityWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mTopActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 383
    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mKeyComponentsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_27

    const-string v2, "  "

    .line 385
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 387
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "="

    .line 388
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 389
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_27

    .line 392
    :cond_5b
    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "  "

    .line 393
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "META_KEY="

    .line 395
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_61

    .line 398
    :cond_7e
    monitor-exit p0

    return-void

    :catchall_80
    move-exception p1

    monitor-exit p0
    :try_end_82
    .catchall {:try_start_1 .. :try_end_82} :catchall_80

    throw p1
.end method

.method public getCurrentTopActivity()Landroid/content/ComponentName;
    .registers 2

    .line 287
    monitor-enter p0

    .line 288
    :try_start_1
    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mTopActivity:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    .line 289
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getFakeFocusedWindow(I)Ljava/lang/String;
    .registers 4

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_b

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_b

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3a

    .line 354
    :cond_b
    iget-object p1, p0, Lcom/android/server/policy/SystemKeyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicyExt;->getFakeFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 355
    iget-object p0, p0, Lcom/android/server/policy/SystemKeyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p1, :cond_3a

    if-eqz p0, :cond_2b

    .line 357
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowStateExt;->getBaseLayer()I

    move-result v0

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowStateExt;->getBaseLayer()I

    move-result v1

    if-gt v0, v1, :cond_2d

    :cond_2b
    if-nez p0, :cond_3a

    .line 359
    :cond_2d
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowStateExt;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSysWindowComponentName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 369
    iget p0, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindowType:I

    const/16 v0, 0x7d0

    if-lt p0, v0, :cond_14

    const/16 v0, 0xbb7

    if-gt p0, v0, :cond_14

    const-string p0, ":"

    .line 371
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    .line 372
    aget-object p0, p0, p1

    return-object p0

    .line 374
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Component name was wrong. name="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SystemKeyManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public isMetaKeyEventRequested()Z
    .registers 4

    .line 275
    monitor-enter p0

    .line 276
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyPass:Z

    if-eqz v0, :cond_25

    .line 277
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_22

    const-string v0, "SystemKeyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isMetaKeyEventRequested() : MetaKey is blocked by componentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/SystemKeyManager;->mTopActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 v0, 0x1

    .line 279
    monitor-exit p0

    return v0

    :cond_25
    const/4 v0, 0x0

    .line 282
    monitor-exit p0

    return v0

    :catchall_28
    move-exception v0

    .line 283
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public isMetaKeyEventRequested(Landroid/content/ComponentName;)Z
    .registers 3

    .line 269
    monitor-enter p0

    .line 270
    :try_start_1
    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_d
    move-exception p1

    .line 271
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public isSystemKeyEventRequested(I)Z
    .registers 7

    .line 224
    monitor-enter p0

    .line 225
    :try_start_1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_30

    const-string v0, "SystemKeyManager"

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSystemKeyEventRequested() is called keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mFocusedWindow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mTopActivity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/SystemKeyManager;->mTopActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_30
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SystemKeyManager;->getFakeFocusedWindow(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_60

    .line 233
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_5e

    const-string v1, "SystemKeyManager"

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSystemKeyEventRequested() : keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is blocked by mFakeFocusedWindow="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_5e
    monitor-exit p0

    return v2

    .line 241
    :cond_60
    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_77

    .line 242
    sget-boolean p1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz p1, :cond_75

    const-string p1, "SystemKeyManager"

    const-string/jumbo v0, "isSystemKeyEventRequested() : mFocusedWindow is empty"

    .line 243
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_75
    monitor-exit p0

    return v1

    .line 248
    :cond_77
    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 249
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_a4

    const-string v0, "SystemKeyManager"

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSystemKeyEventRequested() : keyCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is blocked by focusedWindow="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_a4
    monitor-exit p0

    return v2

    .line 254
    :cond_a6
    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mTopActivity:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ed

    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mTopActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_ed

    iget-object v3, p0, Lcom/android/server/policy/SystemKeyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 256
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-ne v0, v3, :cond_ed

    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 257
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isFocusedWindowVisible()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 258
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_eb

    const-string v0, "SystemKeyManager"

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSystemKeyEventRequested() : keyCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is blocked by topActivity="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/policy/SystemKeyManager;->mTopActivity:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_eb
    monitor-exit p0

    return v2

    .line 264
    :cond_ed
    monitor-exit p0

    return v1

    :catchall_ef
    move-exception p1

    .line 265
    monitor-exit p0
    :try_end_f1
    .catchall {:try_start_1 .. :try_end_f1} :catchall_ef

    throw p1
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .registers 6

    .line 164
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_23

    const-string v0, "SystemKeyManager"

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSystemKeyEventRequested() is called keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " componentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const/4 v0, 0x0

    if-nez p2, :cond_27

    return v0

    .line 172
    :cond_27
    monitor-enter p0

    .line 173
    :try_start_28
    iget-object v1, p0, Lcom/android/server/policy/SystemKeyManager;->mKeyComponentsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    if-nez v1, :cond_38

    .line 175
    monitor-exit p0

    return v0

    .line 179
    :cond_38
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SystemKeyManager;->getFakeFocusedWindow(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 180
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    const/4 p1, 0x1

    .line 181
    monitor-exit p0

    return p1

    .line 193
    :cond_47
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_51
    move-exception p1

    .line 194
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_28 .. :try_end_53} :catchall_51

    throw p1
.end method

.method public final isSystemKeyEventRequested(ILjava/lang/String;)Z
    .registers 6

    .line 198
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_23

    const-string v0, "SystemKeyManager"

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSystemKeyEventRequested() is called keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (String)componentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_23
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    return v1

    .line 206
    :cond_2b
    monitor-enter p0

    .line 207
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mKeyComponentsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-nez p1, :cond_3c

    .line 209
    monitor-exit p0

    return v1

    .line 219
    :cond_3c
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_42
    move-exception p1

    .line 220
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_42

    throw p1
.end method

.method public final notifyRequestedSystemKey()V
    .registers 4

    .line 339
    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/16 v1, 0xbb

    .line 345
    invoke-virtual {p0, v1}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v1

    const/4 v2, 0x3

    .line 346
    invoke-virtual {p0, v2}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result p0

    .line 344
    invoke-interface {v0, v1, p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notifyRequestedSystemKey(ZZ)V

    return-void
.end method

.method public requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
    .registers 6

    const-string v0, "SystemKeyManager"

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestMetaKeyEvent() : componentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 137
    monitor-enter p0

    if-eqz p2, :cond_2c

    .line 139
    :try_start_26
    iget-object p2, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 141
    :cond_2c
    iget-object p2, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 144
    :goto_31
    iget-object p2, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    if-eqz p2, :cond_3f

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/server/policy/SystemKeyManager;->updateFocusedWindow(Ljava/lang/String;)V

    goto :goto_4c

    .line 146
    :cond_3f
    iget-object p2, p0, Lcom/android/server/policy/SystemKeyManager;->mTopActivity:Ljava/lang/String;

    if-eqz p2, :cond_4c

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4c

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SystemKeyManager;->updateTopActivity(Landroid/content/ComponentName;)V

    .line 149
    :cond_4c
    :goto_4c
    monitor-exit p0

    return-void

    :catchall_4e
    move-exception p1

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_26 .. :try_end_50} :catchall_4e

    throw p1
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .registers 8

    const-string v0, "SystemKeyManager"

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSystemKeyEvent() is called keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " componentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mKeyComponentsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_39

    return v1

    .line 109
    :cond_39
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 110
    monitor-enter p0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p1, v2, :cond_46

    const/16 v2, 0xbb

    if-ne p1, v2, :cond_4d

    .line 113
    :cond_46
    :try_start_46
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result p2

    if-eq p3, p2, :cond_4d

    move v1, v3

    .line 117
    :cond_4d
    iget-object p2, p0, Lcom/android/server/policy/SystemKeyManager;->mKeyComponentsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-eqz p3, :cond_5f

    .line 119
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 121
    :cond_5f
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_62
    if-eqz v1, :cond_67

    .line 125
    invoke-virtual {p0}, Lcom/android/server/policy/SystemKeyManager;->notifyRequestedSystemKey()V

    .line 128
    :cond_67
    monitor-exit p0

    return v3

    :catchall_69
    move-exception p1

    .line 129
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_46 .. :try_end_6b} :catchall_69

    throw p1
.end method

.method public final setFocusedActivityWindow()V
    .registers 3

    .line 328
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_27

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFocusedWindow topActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/SystemKeyManager;->mTopActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " focusedWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemKeyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_27
    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mTopActivity:Ljava/lang/String;

    if-eqz v0, :cond_3f

    iget-object v1, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    if-eqz v1, :cond_3f

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 334
    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mTopActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_3f
    return-void
.end method

.method public updateFocusedWindow(Ljava/lang/String;)V
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 303
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/policy/SystemKeyManager;->updateFocusedWindow(Ljava/lang/String;II)V

    return-void
.end method

.method public updateFocusedWindow(Ljava/lang/String;II)V
    .registers 6

    .line 307
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_c

    const-string v0, "SystemKeyManager"

    const-string/jumbo v1, "updateFocusedWindow() is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_c
    monitor-enter p0

    .line 310
    :try_start_d
    iput-object p1, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    .line 311
    iput p2, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindowType:I

    .line 312
    iput p3, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedDisplayId:I

    .line 313
    invoke-virtual {p0}, Lcom/android/server/policy/SystemKeyManager;->setFocusedActivityWindow()V

    .line 314
    iget-object p1, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/SystemKeyManager;->updateMetaKeyPass(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/server/policy/SystemKeyManager;->notifyRequestedSystemKey()V

    .line 316
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_20

    throw p1
.end method

.method public final updateMetaKeyPass(Ljava/lang/String;)V
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    .line 321
    iput-boolean p1, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyPass:Z

    goto :goto_13

    .line 322
    :cond_c
    iget-boolean p1, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyPass:Z

    if-eqz p1, :cond_13

    const/4 p1, 0x0

    .line 323
    iput-boolean p1, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyPass:Z

    :cond_13
    :goto_13
    return-void
.end method

.method public updateTopActivity(Landroid/content/ComponentName;)V
    .registers 4

    .line 293
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_c

    const-string v0, "SystemKeyManager"

    const-string/jumbo v1, "updateTopActivity() is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_c
    monitor-enter p0

    if-eqz p1, :cond_16

    .line 296
    :try_start_f
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    goto :goto_17

    :catchall_14
    move-exception p1

    goto :goto_23

    :cond_16
    const/4 p1, 0x0

    :goto_17
    iput-object p1, p0, Lcom/android/server/policy/SystemKeyManager;->mTopActivity:Ljava/lang/String;

    .line 297
    invoke-virtual {p0}, Lcom/android/server/policy/SystemKeyManager;->setFocusedActivityWindow()V

    .line 298
    iget-object p1, p0, Lcom/android/server/policy/SystemKeyManager;->mTopActivity:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/SystemKeyManager;->updateMetaKeyPass(Ljava/lang/String;)V

    .line 299
    monitor-exit p0

    return-void

    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_14

    throw p1
.end method
