
import styles from './styles.css';

export type HeaderProps = {
    headerText: string;
    subHeaderText: string;

};
export const links = () => [{ rel: 'stylesheet', href: styles }];


const Header = ({ headerText, subHeaderText } : HeaderProps) => {
  return (
      <div className='header_container'>
        <div className='header'>{headerText}</div>
        <div className='subHeader'>{subHeaderText}</div>
      </div>


  );
};

export default Header;
