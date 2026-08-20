.class Lcom/android/commands/hid/Event$Builder;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/hid/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private mEvent:Lcom/android/commands/hid/Event;


# direct methods
.method static bridge synthetic -$$Nest$msetCommand(Lcom/android/commands/hid/Event$Builder;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/commands/hid/Event$Builder;->setCommand(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/android/commands/hid/Event;

    invoke-direct {v0}, Lcom/android/commands/hid/Event;-><init>()V

    iput-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    .line 130
    return-void
.end method

.method private setCommand(Ljava/lang/String;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmCommand(Lcom/android/commands/hid/Event;Ljava/lang/String;)V

    .line 138
    return-void
.end method


# virtual methods
.method public build()Lcom/android/commands/hid/Event;
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0}, Lcom/android/commands/hid/Event;->-$$Nest$fgetmId(Lcom/android/commands/hid/Event;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_79

    .line 179
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0}, Lcom/android/commands/hid/Event;->-$$Nest$fgetmCommand(Lcom/android/commands/hid/Event;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 182
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0}, Lcom/android/commands/hid/Event;->-$$Nest$fgetmCommand(Lcom/android/commands/hid/Event;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "register"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 183
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0}, Lcom/android/commands/hid/Event;->-$$Nest$fgetmDescriptor(Lcom/android/commands/hid/Event;)[B

    move-result-object v0

    if-eqz v0, :cond_28

    goto :goto_6e

    .line 184
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Device registration is missing descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_30
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0}, Lcom/android/commands/hid/Event;->-$$Nest$fgetmCommand(Lcom/android/commands/hid/Event;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "delay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 187
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0}, Lcom/android/commands/hid/Event;->-$$Nest$fgetmDuration(Lcom/android/commands/hid/Event;)I

    move-result v0

    if-lez v0, :cond_47

    goto :goto_6e

    .line 188
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Delay has missing or invalid duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_4f
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0}, Lcom/android/commands/hid/Event;->-$$Nest$fgetmCommand(Lcom/android/commands/hid/Event;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "report"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 191
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0}, Lcom/android/commands/hid/Event;->-$$Nest$fgetmReport(Lcom/android/commands/hid/Event;)[B

    move-result-object v0

    if-eqz v0, :cond_66

    goto :goto_6e

    .line 192
    :cond_66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Report command is missing report data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_6e
    :goto_6e
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    return-object v0

    .line 180
    :cond_71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Event does not contain a command"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No event id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBus(Lcom/android/commands/hid/Event$Bus;)V
    .registers 3
    .param p1, "bus"    # Lcom/android/commands/hid/Event$Bus;

    .line 169
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmBus(Lcom/android/commands/hid/Event;Lcom/android/commands/hid/Event$Bus;)V

    .line 170
    return-void
.end method

.method public setDescriptor([B)V
    .registers 3
    .param p1, "descriptor"    # [B

    .line 145
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmDescriptor(Lcom/android/commands/hid/Event;[B)V

    .line 146
    return-void
.end method

.method public setDuration(I)V
    .registers 3
    .param p1, "duration"    # I

    .line 173
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmDuration(Lcom/android/commands/hid/Event;I)V

    .line 174
    return-void
.end method

.method public setFeatureReports(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[B>;)V"
        }
    .end annotation

    .line 153
    .local p1, "reports":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmFeatureReports(Lcom/android/commands/hid/Event;Landroid/util/SparseArray;)V

    .line 154
    return-void
.end method

.method public setId(I)V
    .registers 3
    .param p1, "id"    # I

    .line 133
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmId(Lcom/android/commands/hid/Event;I)V

    .line 134
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmName(Lcom/android/commands/hid/Event;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public setOutputs(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;)V"
        }
    .end annotation

    .line 157
    .local p1, "outputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/ByteBuffer;[B>;"
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmOutputs(Lcom/android/commands/hid/Event;Ljava/util/Map;)V

    .line 158
    return-void
.end method

.method public setPid(I)V
    .registers 3
    .param p1, "pid"    # I

    .line 165
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmPid(Lcom/android/commands/hid/Event;I)V

    .line 166
    return-void
.end method

.method public setReport([B)V
    .registers 3
    .param p1, "report"    # [B

    .line 149
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmReport(Lcom/android/commands/hid/Event;[B)V

    .line 150
    return-void
.end method

.method public setVid(I)V
    .registers 3
    .param p1, "vid"    # I

    .line 161
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmVid(Lcom/android/commands/hid/Event;I)V

    .line 162
    return-void
.end method
