.class public Landroid/renderscript/ScriptC;
.super Landroid/renderscript/Script;
.source "ScriptC.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ScriptC"


# direct methods
.method protected constructor whitelist <init>(ILandroid/renderscript/RenderScript;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .line 44
    int-to-long v0, p1

    invoke-direct {p0, v0, v1, p2}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 45
    return-void
.end method

.method protected constructor whitelist <init>(JLandroid/renderscript/RenderScript;)V
    .registers 4
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 55
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .registers 8
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceID"    # I

    .line 65
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 66
    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)J

    move-result-wide v2

    .line 67
    .local v2, "id":J
    cmp-long v0, v2, v0

    if-eqz v0, :cond_11

    .line 70
    invoke-virtual {p0, v2, v3}, Landroid/renderscript/ScriptC;->setID(J)V

    .line 71
    return-void

    .line 68
    :cond_11
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Loading of ScriptC script failed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor whitelist <init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V
    .registers 11
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "resName"    # Ljava/lang/String;
    .param p3, "bitcode32"    # [B
    .param p4, "bitcode64"    # [B

    .line 79
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 80
    const-wide/16 v2, 0x0

    .line 81
    .local v2, "id":J
    sget v4, Landroid/renderscript/RenderScript;->sPointerSize:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_11

    .line 82
    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide v2

    goto :goto_15

    .line 84
    :cond_11
    invoke-static {p1, p2, p4}, Landroid/renderscript/ScriptC;->internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide v2

    .line 86
    :goto_15
    cmp-long v0, v2, v0

    if-eqz v0, :cond_1d

    .line 89
    invoke-virtual {p0, v2, v3}, Landroid/renderscript/ScriptC;->setID(J)V

    .line 90
    return-void

    .line 87
    :cond_1d
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Loading of ScriptC script failed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static declared-synchronized greylist-max-o internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)J
    .registers 11
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceID"    # I

    const-class v0, Landroid/renderscript/ScriptC;

    monitor-enter v0

    .line 95
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_47

    .line 98
    .local v1, "is":Ljava/io/InputStream;
    const/16 v2, 0x400

    :try_start_9
    new-array v2, v2, [B

    .line 99
    .local v2, "pgm":[B
    const/4 v3, 0x0

    .line 101
    .local v3, "pgmLength":I
    :goto_c
    array-length v4, v2

    sub-int/2addr v4, v3

    .line 102
    .local v4, "bytesLeft":I
    if-nez v4, :cond_1e

    .line 103
    array-length v5, v2

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    .line 104
    .local v5, "buf2":[B
    array-length v6, v2

    const/4 v7, 0x0

    invoke-static {v2, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    move-object v2, v5

    .line 106
    array-length v6, v2

    sub-int v4, v6, v3

    .line 108
    .end local v5    # "buf2":[B
    :cond_1e
    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_3a

    .line 109
    .local v5, "bytesRead":I
    if-gtz v5, :cond_38

    .line 110
    nop

    .line 115
    .end local v4    # "bytesLeft":I
    .end local v5    # "bytesRead":I
    :try_start_25
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_40
    .catchall {:try_start_25 .. :try_end_28} :catchall_47

    .line 116
    nop

    .line 119
    nop

    .line 121
    :try_start_2a
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "resName":Ljava/lang/String;
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v2, v3}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J

    move-result-wide v5
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_47

    monitor-exit v0

    return-wide v5

    .line 112
    .local v4, "bytesLeft":I
    .restart local v5    # "bytesRead":I
    :cond_38
    add-int/2addr v3, v5

    .line 113
    .end local v4    # "bytesLeft":I
    .end local v5    # "bytesRead":I
    goto :goto_c

    .line 115
    .end local v2    # "pgm":[B
    .end local v3    # "pgmLength":I
    :catchall_3a
    move-exception v2

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 116
    nop

    .end local v1    # "is":Ljava/io/InputStream;
    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "resources":Landroid/content/res/Resources;
    .end local p2    # "resourceID":I
    throw v2
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_40} :catch_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_47

    .line 117
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local p0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p1    # "resources":Landroid/content/res/Resources;
    .restart local p2    # "resourceID":I
    :catch_40
    move-exception v2

    .line 118
    .local v2, "e":Ljava/io/IOException;
    :try_start_41
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v3}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v3
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_47

    .line 94
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "resources":Landroid/content/res/Resources;
    .end local p2    # "resourceID":I
    :catchall_47
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized greylist-max-o internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J
    .registers 6
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "bitcode"    # [B

    const-class v0, Landroid/renderscript/ScriptC;

    monitor-enter v0

    .line 129
    :try_start_3
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {p0, p1, v1, p2, v2}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return-wide v1

    .line 129
    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "resName":Ljava/lang/String;
    .end local p2    # "bitcode":[B
    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0
.end method
