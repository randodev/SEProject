package ro.ucv.ace.service;

import ro.ucv.ace.dto.user.UserCreateDto;
import ro.ucv.ace.dto.user.UserDto;
import ro.ucv.ace.dto.user.UserImageDto;
import ro.ucv.ace.exception.ServiceEntityAlreadyExistsException;
import ro.ucv.ace.exception.ServiceEntityNotFoundException;
import ro.ucv.ace.exception.ServiceForeignKeyNotFoundException;

import java.util.List;

/**
 * Created by ctotolin on 05-May-16.
 */
public interface UserManagementService {
    List<UserDto> getAllUsers();

    UserDto getById(Integer id) throws ServiceEntityNotFoundException;

    void addUser(UserCreateDto user) throws ServiceEntityAlreadyExistsException, ServiceForeignKeyNotFoundException;

    void deleteUser(Integer id) throws ServiceEntityNotFoundException;

    void uploadImage(UserImageDto userImageDto) throws ServiceEntityNotFoundException;

    UserImageDto getImage(Integer id) throws ServiceEntityNotFoundException;
}
