.class public final Lcom/android/server/policy/GlobalKeyManager;
.super Ljava/lang/Object;
.source "GlobalKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;
    }
.end annotation


# static fields
.field public static final ATTR_COMPONENT:Ljava/lang/String; = "component"

.field public static final ATTR_DISPATCH_WHEN_NON_INTERACTIVE:Ljava/lang/String; = "dispatchWhenNonInteractive"

.field public static final ATTR_KEY_CODE:Ljava/lang/String; = "keyCode"

.field public static final ATTR_VERSION:Ljava/lang/String; = "version"

.field public static final GLOBAL_KEY_FILE_VERSION:I = 0x1

.field public static final TAG:Ljava/lang/String; = "GlobalKeyManager"

.field public static final TAG_GLOBAL_KEYS:Ljava/lang/String; = "global_keys"

.field public static final TAG_KEY:Ljava/lang/String; = "key"


# instance fields
.field public mBeganFromNonInteractive:Z

.field public final mKeyMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/policy/GlobalKeyManager;->loadGlobalKeys(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    .line 158
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_12

    .line 160
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p0, "mKeyMapping.size=0"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 163
    :cond_12
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mKeyMapping={"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v0, :cond_62

    const-string v2, "  "

    .line 165
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "="

    .line 168
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    invoke-static {v2}, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->-$$Nest$fgetmComponentName(Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ",dispatchWhenNonInteractive="

    .line 170
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    invoke-static {v2}, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->-$$Nest$fgetmDispatchWhenNonInteractive(Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 173
    :cond_62
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p0, "}"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 75
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_32

    .line 76
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    if-eqz p2, :cond_32

    .line 78
    new-instance v0, Lcom/android/server/policy/GlobalKeyIntent;

    invoke-static {p2}, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->-$$Nest$fgetmComponentName(Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;)Landroid/content/ComponentName;

    move-result-object p2

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    invoke-direct {v0, p2, p3, v2}, Lcom/android/server/policy/GlobalKeyIntent;-><init>(Landroid/content/ComponentName;Landroid/view/KeyEvent;Z)V

    .line 79
    invoke-virtual {v0}, Lcom/android/server/policy/GlobalKeyIntent;->getIntent()Landroid/content/Intent;

    move-result-object p2

    .line 80
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_31

    .line 83
    iput-boolean v1, p0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    :cond_31
    return p2

    :cond_32
    return v1
.end method

.method public final loadGlobalKeys(Landroid/content/Context;)V
    .registers 9

    const-string v0, "GlobalKeyManager"

    .line 124
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x117000f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_d} :catch_74
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_d} :catch_6d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_66

    :try_start_d
    const-string/jumbo v1, "global_keys"

    .line 126
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v1, "version"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 127
    invoke-interface {p1, v3, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_56

    .line 130
    :cond_1f
    :goto_1f
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 131
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_29

    goto :goto_56

    :cond_29
    const-string/jumbo v2, "key"

    .line 135
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string/jumbo v1, "keyCode"

    .line 136
    invoke-interface {p1, v3, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "component"

    .line 137
    invoke-interface {p1, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "dispatchWhenNonInteractive"

    .line 139
    invoke-interface {p1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1f

    .line 142
    iget-object v5, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    invoke-direct {v6, p0, v2, v4}, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;-><init>(Lcom/android/server/policy/GlobalKeyManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_d .. :try_end_55} :catchall_5a

    goto :goto_1f

    .line 148
    :cond_56
    :goto_56
    :try_start_56
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_59
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_56 .. :try_end_59} :catch_74
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_56 .. :try_end_59} :catch_6d
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_66

    goto :goto_7b

    :catchall_5a
    move-exception p0

    if-eqz p1, :cond_65

    .line 124
    :try_start_5d
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_65

    :catchall_61
    move-exception p1

    :try_start_62
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_65
    :goto_65
    throw p0
    :try_end_66
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_62 .. :try_end_66} :catch_74
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_62 .. :try_end_66} :catch_6d
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_66} :catch_66

    :catch_66
    move-exception p0

    const-string p1, "I/O exception reading global keys file"

    .line 153
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7b

    :catch_6d
    move-exception p0

    const-string p1, "XML parser exception reading global keys file"

    .line 151
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7b

    :catch_74
    move-exception p0

    const-string/jumbo p1, "global keys file not found"

    .line 149
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7b
    return-void
.end method

.method public setBeganFromNonInteractive()V
    .registers 2

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    return-void
.end method

.method public shouldDispatchFromNonInteractive(I)Z
    .registers 2

    .line 102
    iget-object p0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 107
    :cond_c
    invoke-static {p0}, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->-$$Nest$fgetmDispatchWhenNonInteractive(Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;)Z

    move-result p0

    return p0
.end method

.method public shouldHandleGlobalKey(I)Z
    .registers 2

    .line 95
    iget-object p0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
