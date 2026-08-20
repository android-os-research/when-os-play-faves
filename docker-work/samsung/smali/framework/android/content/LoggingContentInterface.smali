.class public Landroid/content/LoggingContentInterface;
.super Ljava/lang/Object;
.source "LoggingContentInterface.java"

# interfaces
.implements Landroid/content/ContentInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/LoggingContentInterface$Logger;
    }
.end annotation


# instance fields
.field private final blacklist delegate:Landroid/content/ContentInterface;

.field private final blacklist tag:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgettag(Landroid/content/LoggingContentInterface;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/LoggingContentInterface;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/ContentInterface;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "delegate"    # Landroid/content/ContentInterface;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/content/LoggingContentInterface;->tag:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    .line 49
    return-void
.end method


# virtual methods
.method public blacklist applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 6
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 275
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "applyBatch"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_10
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2}, Landroid/content/ContentInterface;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ContentProviderResult;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_22
    .catchall {:try_start_10 .. :try_end_1c} :catchall_20

    .line 282
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 277
    return-object v1

    .line 275
    :catchall_20
    move-exception v1

    goto :goto_28

    .line 278
    :catch_22
    move-exception v1

    .line 279
    .local v1, "res":Ljava/lang/Exception;
    :try_start_23
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "authority":Ljava/lang/String;
    .end local p2    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    throw v1
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_20

    .line 275
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "authority":Ljava/lang/String;
    .restart local p2    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_28
    :try_start_28
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_30
    throw v1
.end method

.method public blacklist bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # [Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "bulkInsert"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_10
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2}, Landroid/content/ContentInterface;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_24} :catch_2a
    .catchall {:try_start_10 .. :try_end_24} :catchall_28

    .line 203
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 198
    return v1

    .line 196
    :catchall_28
    move-exception v1

    goto :goto_30

    .line 199
    :catch_2a
    move-exception v1

    .line 200
    .local v1, "res":Ljava/lang/Exception;
    :try_start_2b
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "initialValues":[Landroid/content/ContentValues;
    throw v1
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_28

    .line 196
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "initialValues":[Landroid/content/ContentValues;
    :goto_30
    :try_start_30
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_38
    throw v1
.end method

.method public blacklist call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const-string v2, "call"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_16
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/ContentInterface;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_28
    .catchall {:try_start_16 .. :try_end_22} :catchall_26

    .line 295
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 290
    return-object v1

    .line 288
    :catchall_26
    move-exception v1

    goto :goto_2e

    .line 291
    :catch_28
    move-exception v1

    .line 292
    .local v1, "res":Ljava/lang/Exception;
    :try_start_29
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "authority":Ljava/lang/String;
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "arg":Ljava/lang/String;
    .end local p4    # "extras":Landroid/os/Bundle;
    throw v1
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_26

    .line 288
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "authority":Ljava/lang/String;
    .restart local p2    # "method":Ljava/lang/String;
    .restart local p3    # "arg":Ljava/lang/String;
    .restart local p4    # "extras":Landroid/os/Bundle;
    :goto_2e
    :try_start_2e
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_36
    throw v1
.end method

.method public blacklist canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "canonicalize"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_d
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1}, Landroid/content/ContentInterface;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_1f
    .catchall {:try_start_d .. :try_end_19} :catchall_1d

    .line 139
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 134
    return-object v1

    .line 132
    :catchall_1d
    move-exception v1

    goto :goto_25

    .line 135
    :catch_1f
    move-exception v1

    .line 136
    .local v1, "res":Ljava/lang/Exception;
    :try_start_20
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v1
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    .line 132
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    :goto_25
    :try_start_25
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2d
    throw v1
.end method

.method public blacklist checkUriPermission(Landroid/net/Uri;II)I
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uid"    # I
    .param p3, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "checkUriPermission"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_1b
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->checkUriPermission(Landroid/net/Uri;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2f} :catch_35
    .catchall {:try_start_1b .. :try_end_2f} :catchall_33

    .line 177
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 172
    return v1

    .line 170
    :catchall_33
    move-exception v1

    goto :goto_3b

    .line 173
    :catch_35
    move-exception v1

    .line 174
    .local v1, "res":Ljava/lang/Exception;
    :try_start_36
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "uid":I
    .end local p3    # "modeFlags":I
    throw v1
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_33

    .line 170
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "uid":I
    .restart local p3    # "modeFlags":I
    :goto_3b
    :try_start_3b
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_43
    throw v1
.end method

.method public blacklist delete(Landroid/net/Uri;Landroid/os/Bundle;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "delete"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_10
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2}, Landroid/content/ContentInterface;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_24} :catch_2a
    .catchall {:try_start_10 .. :try_end_24} :catchall_28

    .line 215
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 210
    return v1

    .line 208
    :catchall_28
    move-exception v1

    goto :goto_30

    .line 211
    :catch_2a
    move-exception v1

    .line 212
    .local v1, "res":Ljava/lang/Exception;
    :try_start_2b
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "extras":Landroid/os/Bundle;
    throw v1
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_28

    .line 208
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "extras":Landroid/os/Bundle;
    :goto_30
    :try_start_30
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_38
    throw v1
.end method

.method public blacklist getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "getStreamTypes"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_10
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2}, Landroid/content/ContentInterface;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_22
    .catchall {:try_start_10 .. :try_end_1c} :catchall_20

    .line 127
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 122
    return-object v1

    .line 120
    :catchall_20
    move-exception v1

    goto :goto_28

    .line 123
    :catch_22
    move-exception v1

    .line 124
    .local v1, "res":Ljava/lang/Exception;
    :try_start_23
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mimeTypeFilter":Ljava/lang/String;
    throw v1
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_20

    .line 120
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mimeTypeFilter":Ljava/lang/String;
    :goto_28
    :try_start_28
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_30
    throw v1
.end method

.method public blacklist getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "getType"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_d
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1}, Landroid/content/ContentInterface;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_1f
    .catchall {:try_start_d .. :try_end_19} :catchall_1d

    .line 114
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 109
    return-object v1

    .line 107
    :catchall_1d
    move-exception v1

    goto :goto_25

    .line 110
    :catch_1f
    move-exception v1

    .line 111
    .local v1, "res":Ljava/lang/Exception;
    :try_start_20
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v1
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    .line 107
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    :goto_25
    :try_start_25
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2d
    throw v1
.end method

.method public blacklist insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string v2, "insert"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_13
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1f} :catch_25
    .catchall {:try_start_13 .. :try_end_1f} :catchall_23

    .line 190
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 185
    return-object v1

    .line 183
    :catchall_23
    move-exception v1

    goto :goto_2b

    .line 186
    :catch_25
    move-exception v1

    .line 187
    .local v1, "res":Ljava/lang/Exception;
    :try_start_26
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "initialValues":Landroid/content/ContentValues;
    .end local p3    # "extras":Landroid/os/Bundle;
    throw v1
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_23

    .line 183
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "initialValues":Landroid/content/ContentValues;
    .restart local p3    # "extras":Landroid/os/Bundle;
    :goto_2b
    :try_start_2b
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_33
    throw v1
.end method

.method public blacklist openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 247
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string/jumbo v2, "openAssetFile"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_14
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetFileDescriptor;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_26
    .catchall {:try_start_14 .. :try_end_20} :catchall_24

    .line 254
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 249
    return-object v1

    .line 247
    :catchall_24
    move-exception v1

    goto :goto_2c

    .line 250
    :catch_26
    move-exception v1

    .line 251
    .local v1, "res":Ljava/lang/Exception;
    :try_start_27
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mode":Ljava/lang/String;
    .end local p3    # "signal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_24

    .line 247
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mode":Ljava/lang/String;
    .restart local p3    # "signal":Landroid/os/CancellationSignal;
    :goto_2c
    :try_start_2c
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_34
    throw v1
.end method

.method public blacklist openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 234
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string/jumbo v2, "openFile"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_14
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_26
    .catchall {:try_start_14 .. :try_end_20} :catchall_24

    .line 241
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 236
    return-object v1

    .line 234
    :catchall_24
    move-exception v1

    goto :goto_2c

    .line 237
    :catch_26
    move-exception v1

    .line 238
    .local v1, "res":Ljava/lang/Exception;
    :try_start_27
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mode":Ljava/lang/String;
    .end local p3    # "signal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_24

    .line 234
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mode":Ljava/lang/String;
    .restart local p3    # "signal":Landroid/os/CancellationSignal;
    :goto_2c
    :try_start_2c
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_34
    throw v1
.end method

.method public blacklist openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 261
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const-string/jumbo v2, "openTypedAssetFile"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_17
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/ContentInterface;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetFileDescriptor;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_23} :catch_29
    .catchall {:try_start_17 .. :try_end_23} :catchall_27

    .line 268
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 263
    return-object v1

    .line 261
    :catchall_27
    move-exception v1

    goto :goto_2f

    .line 264
    :catch_29
    move-exception v1

    .line 265
    .local v1, "res":Ljava/lang/Exception;
    :try_start_2a
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mimeTypeFilter":Ljava/lang/String;
    .end local p3    # "opts":Landroid/os/Bundle;
    .end local p4    # "signal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_27

    .line 261
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mimeTypeFilter":Ljava/lang/String;
    .restart local p3    # "opts":Landroid/os/Bundle;
    .restart local p4    # "signal":Landroid/os/CancellationSignal;
    :goto_2f
    :try_start_2f
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_37
    throw v1
.end method

.method public blacklist query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const-string/jumbo v2, "query"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_17
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/ContentInterface;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_23} :catch_29
    .catchall {:try_start_17 .. :try_end_23} :catchall_27

    .line 102
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 97
    return-object v1

    .line 95
    :catchall_27
    move-exception v1

    goto :goto_2f

    .line 98
    :catch_29
    move-exception v1

    .line 99
    .local v1, "res":Ljava/lang/Exception;
    :try_start_2a
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "projection":[Ljava/lang/String;
    .end local p3    # "queryArgs":Landroid/os/Bundle;
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_27

    .line 95
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "projection":[Ljava/lang/String;
    .restart local p3    # "queryArgs":Landroid/os/Bundle;
    .restart local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_2f
    :try_start_2f
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_37
    throw v1
.end method

.method public blacklist refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string/jumbo v2, "refresh"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_14
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_28} :catch_2e
    .catchall {:try_start_14 .. :try_end_28} :catchall_2c

    .line 164
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 159
    return v1

    .line 157
    :catchall_2c
    move-exception v1

    goto :goto_34

    .line 160
    :catch_2e
    move-exception v1

    .line 161
    .local v1, "res":Ljava/lang/Exception;
    :try_start_2f
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "args":Landroid/os/Bundle;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_2c

    .line 157
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "args":Landroid/os/Bundle;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_34
    :try_start_34
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3c
    throw v1
.end method

.method public blacklist uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo v2, "uncanonicalize"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_e
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1}, Landroid/content/ContentInterface;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_20
    .catchall {:try_start_e .. :try_end_1a} :catchall_1e

    .line 151
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 146
    return-object v1

    .line 144
    :catchall_1e
    move-exception v1

    goto :goto_26

    .line 147
    :catch_20
    move-exception v1

    .line 148
    .local v1, "res":Ljava/lang/Exception;
    :try_start_21
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v1
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1e

    .line 144
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    :goto_26
    :try_start_26
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw v1
.end method

.method public blacklist update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string/jumbo v2, "update"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_14
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_28} :catch_2e
    .catchall {:try_start_14 .. :try_end_28} :catchall_2c

    .line 228
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 223
    return v1

    .line 221
    :catchall_2c
    move-exception v1

    goto :goto_34

    .line 224
    :catch_2e
    move-exception v1

    .line 225
    .local v1, "res":Ljava/lang/Exception;
    :try_start_2f
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "values":Landroid/content/ContentValues;
    .end local p3    # "extras":Landroid/os/Bundle;
    throw v1
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_2c

    .line 221
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "values":Landroid/content/ContentValues;
    .restart local p3    # "extras":Landroid/os/Bundle;
    :goto_34
    :try_start_34
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3c
    throw v1
.end method
