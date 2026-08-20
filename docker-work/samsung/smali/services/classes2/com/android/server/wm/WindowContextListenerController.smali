.class public Lcom/android/server/wm/WindowContextListenerController;
.super Ljava/lang/Object;
.source "WindowContextListenerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;
    }
.end annotation


# instance fields
.field public final mListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public assertCallerCanModifyListener(Landroid/os/IBinder;ZI)Z
    .registers 5

    .line 167
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-nez p0, :cond_19

    .line 169
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_18

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const p2, -0x43bd1e81

    const/4 p3, 0x0

    invoke-static {p0, p2, p1, p3, p3}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    return p1

    :cond_19
    const/4 p1, 0x1

    if-eqz p2, :cond_1d

    return p1

    .line 175
    :cond_1d
    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmOwnerUid(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)I

    move-result p2

    if-ne p3, p2, :cond_24

    return p1

    .line 176
    :cond_24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Uid mismatch. Caller uid is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", while the listener\'s owner is from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmOwnerUid(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispatchPendingConfigurationIfNeeded(I)V
    .registers 5

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2c

    .line 141
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    .line 142
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->getWindowContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_29

    invoke-static {v1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmHasPendingConfiguration(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 144
    invoke-static {v1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$mreportConfigToWindowTokenClient(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V

    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2c
    return-void
.end method

.method public dispatchPreUpdatedConfigurationIfNeeded(Landroid/content/res/Configuration;Landroid/os/IBinder;)Z
    .registers 4

    .line 152
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-eqz p0, :cond_1a

    .line 153
    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmOwnerUid(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)I

    move-result p2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eq p2, v0, :cond_15

    goto :goto_1a

    .line 156
    :cond_15
    invoke-static {p0, p1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$mreportConfigToWindowTokenClient(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Landroid/content/res/Configuration;)V

    const/4 p0, 0x1

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-class p2, Lcom/android/server/wm/WindowContextListenerController;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    iget-object p2, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_28
    if-ge v1, p2, :cond_99

    .line 224
    iget-object v2, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    .line 225
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mListeners #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " {"

    .line 226
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "type:"

    .line 227
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmType(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ", display:"

    .line 228
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmLastReportedDisplay(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ", package="

    .line 229
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmPackageName(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ", container="

    .line 230
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmContainer(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v3, "}"

    .line 231
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    invoke-static {v2}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmHasPendingConfiguration(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 234
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  mHasPendingConfiguration=true"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    :cond_87
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  mLastReportedConfig="

    .line 238
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmLastReportedConfig(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 240
    :cond_99
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getContainer(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;"
        }
    .end annotation

    .line 197
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-eqz p0, :cond_f

    .line 198
    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmContainer(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public getOptions(Landroid/os/IBinder;)Landroid/os/Bundle;
    .registers 2

    .line 192
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-eqz p0, :cond_f

    .line 193
    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmOptions(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public getWindowType(Landroid/os/IBinder;)I
    .registers 2

    .line 187
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-eqz p0, :cond_f

    .line 188
    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmType(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)I

    move-result p0

    goto :goto_10

    :cond_f
    const/4 p0, -0x1

    :goto_10
    return p0
.end method

.method public hasListener(Landroid/os/IBinder;)Z
    .registers 2

    .line 183
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public registerWindowContainerListener(Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;IILandroid/os/Bundle;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;II",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 92
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowContextListenerController;->registerWindowContainerListener(Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;IILandroid/os/Bundle;Z)V

    return-void
.end method

.method public registerWindowContainerListener(Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;IILandroid/os/Bundle;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;II",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-nez v0, :cond_1b

    .line 117
    new-instance v0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;-><init>(Lcom/android/server/wm/WindowContextListenerController;Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;IILandroid/os/Bundle;Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl-IA;)V

    .line 119
    invoke-static {v0, p6}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$mregister(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Z)V

    goto :goto_1e

    .line 121
    :cond_1b
    invoke-static {v0, p2}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$mupdateContainer(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Lcom/android/server/wm/WindowContainer;)V

    :goto_1e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowContextListenerController{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mListeners=["

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_2e

    .line 208
    iget-object v3, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_2b

    const-string v3, ", "

    .line 210
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2e
    const-string p0, "]}"

    .line 213
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregisterWindowContainerListener(Landroid/os/IBinder;)V
    .registers 2

    .line 126
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-nez p0, :cond_b

    return-void

    .line 133
    :cond_b
    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$munregister(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V

    .line 134
    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmDeathRecipient(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 135
    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmDeathRecipient(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->unlinkToDeath()V

    :cond_1b
    return-void
.end method
