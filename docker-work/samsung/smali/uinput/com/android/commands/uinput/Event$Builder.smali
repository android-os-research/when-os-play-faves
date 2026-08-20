.class Lcom/android/commands/uinput/Event$Builder;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/uinput/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private mEvent:Lcom/android/commands/uinput/Event;


# direct methods
.method static bridge synthetic -$$Nest$msetCommand(Lcom/android/commands/uinput/Event$Builder;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/commands/uinput/Event$Builder;->setCommand(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Lcom/android/commands/uinput/Event;

    invoke-direct {v0}, Lcom/android/commands/uinput/Event;-><init>()V

    iput-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    .line 135
    return-void
.end method

.method private setCommand(Ljava/lang/String;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmCommand(Lcom/android/commands/uinput/Event;Ljava/lang/String;)V

    .line 143
    return-void
.end method


# virtual methods
.method public build()Lcom/android/commands/uinput/Event;
    .registers 4

    .line 182
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0}, Lcom/android/commands/uinput/Event;->-$$Nest$fgetmId(Lcom/android/commands/uinput/Event;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_97

    .line 184
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0}, Lcom/android/commands/uinput/Event;->-$$Nest$fgetmCommand(Lcom/android/commands/uinput/Event;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8f

    .line 187
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0}, Lcom/android/commands/uinput/Event;->-$$Nest$fgetmCommand(Lcom/android/commands/uinput/Event;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "register"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 188
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0}, Lcom/android/commands/uinput/Event;->-$$Nest$fgetmConfiguration(Lcom/android/commands/uinput/Event;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_28

    goto :goto_65

    .line 189
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Device registration is missing configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_30
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0}, Lcom/android/commands/uinput/Event;->-$$Nest$fgetmCommand(Lcom/android/commands/uinput/Event;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "delay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 193
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0}, Lcom/android/commands/uinput/Event;->-$$Nest$fgetmDuration(Lcom/android/commands/uinput/Event;)I

    move-result v0

    if-lez v0, :cond_47

    goto :goto_65

    .line 194
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Delay has missing or invalid duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_4f
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0}, Lcom/android/commands/uinput/Event;->-$$Nest$fgetmCommand(Lcom/android/commands/uinput/Event;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "inject"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 197
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0}, Lcom/android/commands/uinput/Event;->-$$Nest$fgetmInjections(Lcom/android/commands/uinput/Event;)[I

    move-result-object v0

    if-eqz v0, :cond_68

    .line 203
    :goto_65
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    return-object v0

    .line 198
    :cond_68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Inject command is missing injection data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_70
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v2}, Lcom/android/commands/uinput/Event;->-$$Nest$fgetmCommand(Lcom/android/commands/uinput/Event;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_8f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Event does not contain a command"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No event id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAbsInfo(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lsrc/com/android/commands/uinput/InputAbsInfo;",
            ">;)V"
        }
    .end annotation

    .line 178
    .local p1, "absInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lsrc/com/android/commands/uinput/InputAbsInfo;>;"
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmAbsInfo(Lcom/android/commands/uinput/Event;Landroid/util/SparseArray;)V

    .line 179
    return-void
.end method

.method public setBus(Lcom/android/commands/uinput/Event$Bus;)V
    .registers 3
    .param p1, "bus"    # Lcom/android/commands/uinput/Event$Bus;

    .line 166
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmBus(Lcom/android/commands/uinput/Event;Lcom/android/commands/uinput/Event$Bus;)V

    .line 167
    return-void
.end method

.method public setConfiguration(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    .line 154
    .local p1, "configuration":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmConfiguration(Lcom/android/commands/uinput/Event;Landroid/util/SparseArray;)V

    .line 155
    return-void
.end method

.method public setDuration(I)V
    .registers 3
    .param p1, "duration"    # I

    .line 170
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmDuration(Lcom/android/commands/uinput/Event;I)V

    .line 171
    return-void
.end method

.method public setFfEffectsMax(I)V
    .registers 3
    .param p1, "ffEffectsMax"    # I

    .line 174
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmFfEffectsMax(Lcom/android/commands/uinput/Event;I)V

    .line 175
    return-void
.end method

.method public setId(I)V
    .registers 3
    .param p1, "id"    # I

    .line 138
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmId(Lcom/android/commands/uinput/Event;I)V

    .line 139
    return-void
.end method

.method public setInjections([I)V
    .registers 3
    .param p1, "events"    # [I

    .line 150
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmInjections(Lcom/android/commands/uinput/Event;[I)V

    .line 151
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmName(Lcom/android/commands/uinput/Event;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public setPid(I)V
    .registers 3
    .param p1, "pid"    # I

    .line 162
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmPid(Lcom/android/commands/uinput/Event;I)V

    .line 163
    return-void
.end method

.method public setVid(I)V
    .registers 3
    .param p1, "vid"    # I

    .line 158
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmVid(Lcom/android/commands/uinput/Event;I)V

    .line 159
    return-void
.end method
